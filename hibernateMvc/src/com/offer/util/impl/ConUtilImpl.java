package com.offer.util.impl;

import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.offer.util.ConUtil;

@Service("conUtil")
public class ConUtilImpl implements ConUtil{
	
	public void stringChangeObject(Map target, Object src) throws Exception {
		if (src == null || target == null)
			return;
		Method methods[] = src.getClass().getMethods();
		for (int i = 0; i < methods.length; i++) {
			String method = methods[i].getName();
			if (method.startsWith("get") && !"getClass".equals(method)) {
				Class type = methods[i].getReturnType();
				String key = method.replaceFirst("get", "");
				key = key.substring(0, 1).toLowerCase() + key.substring(1);
				Object value = methods[i].invoke(src, (Object[]) null);
				if (value != null) {
					target.put(key, putParamenter(type, value));
				}
			}
		}
	}

	public void objectToMap(Map target, Object src) throws Exception {
		if (src == null || target == null)
			return;
		Method methods[] = src.getClass().getMethods();
		for (int i = 0; i < methods.length; i++) {
			String method = methods[i].getName();
			if (method.startsWith("get") && !"getClass".equals(method)) {
				Class type = methods[i].getReturnType();
				String key = method.replaceFirst("get", "");
				key = key.substring(0, 1).toLowerCase() + key.substring(1);
				Object value = methods[i].invoke(src, (Object[]) null);
				if (value == null)
					target.put(key, "");
				else {
					target.put(key, formatParamenter(type, value));
				}
			}
		}
	}

	public Object mapToObject(Object target, Map<String, String> src)
			throws Exception {
		if (src == null || target == null)
			return target;

		Iterator<String> it = src.keySet().iterator();
		Method methods[] = target.getClass().getMethods();
		while (it.hasNext()) {
			String key = it.next();
			String value = String.valueOf(src.get(key));
			String methordName = "set";// + key.substring(0, 1).toUpperCase() + key.substring(1)
			for (String s : key.split("_")) {
			   methordName += s.substring(0,1).toUpperCase() + s.substring(1);
			}
			for (int i = 0; i < methods.length; i++) {
				if (methods[i].getName().equalsIgnoreCase(methordName)) {
					Class type = methods[i].getParameterTypes()[0];
					Object retValue = null;
					if ("".equals(value) || value.equals("null")) {
				      retValue = null;
					}
					else
						retValue = parseParamenter(type, value);
					methods[i].invoke(target, new Object[] { retValue });
					break;
				}
			}
		}
		return target;
	}
	
   public Object map2Object(Object target, Map<String, Object> src) throws Exception {
      if (src == null || target == null) return target;

      Iterator<String> it = src.keySet().iterator();
      Method methods[] = target.getClass().getMethods();
      while (it.hasNext()) {
         String key = it.next();
         String value = (String) src.get(key);
         String methordName = "set" + key.substring(0, 1).toUpperCase() + key.substring(1);
         for (int i = 0; i < methods.length; i++) {
            if (methods[i].getName().equalsIgnoreCase(methordName)) {
               Class type = methods[i].getParameterTypes()[0];
               Object retValue = null;
               if (!type.getName().equalsIgnoreCase("java.lang.String") || "".equals(value) || value == null) retValue = null;
               else retValue = parseParamenter2(type, value);
               methods[i].invoke(target, new Object[] { retValue });
            }
         }
      }
      return target;
   }
	
	private static Object putParamenter(Class type, Object objValue) throws Exception {
		String typeName = type.getName();
		Object ret = new Object();
		
		if (type.isPrimitive()) {
			if ("int".equals(typeName))
				type = Class.forName("java.lang.Integer");
			else if ("long".equals(typeName))
				type = Class.forName("java.lang.Long");
			else if ("float".equals(typeName))
				type = Class.forName("java.lang.Float");
			else if ("double".equals(typeName))
				type = Class.forName("java.lang.Double");
			else if ("boolean".equals(typeName))
				type = Class.forName("java.lang.Boolean");
			else if ("char".equals(typeName))
				type = Class.forName("java.lang.Character");
			else if ("byte".equals(typeName))
				type = Class.forName("java.lang.Byte");
		}
		if ("java.util.Date".equals(typeName)
				|| "java.sql.Date".equals(typeName)) {
			String value = objValue.toString().trim();
			String ft = "yyyy-MM-dd";
			if (value.indexOf(":") > 0)
				ft += " HH:mm:ss";
			SimpleDateFormat format = new SimpleDateFormat(ft);
			ret = format.parse(objValue.toString());
		} else if ("java.sql.Timestamp".equals(typeName)) {
			String ft = "yyyy-MM-dd HH:mm:ss";
			SimpleDateFormat format = new SimpleDateFormat(ft);
			ret = format.format((Date)objValue);
			ret = Timestamp.valueOf(ret.toString());
		} 
//		else if (typeName.startsWith("java.math.")
//				|| "java.lang.Integer".equals(typeName)
//				|| "java.lang.Long".equals(typeName)
//				|| "java.lang.Float".equals(typeName)
//				|| "java.lang.Double".equals(typeName)) {
//			NumberFormat format = NumberFormat.getInstance();
//			format.setMaximumIntegerDigits(20);
//			format.setMinimumIntegerDigits(1);
//			format.setGroupingUsed(false);
//			ret = format.format(objValue);
//		}
		else {
			ret = objValue;
		}
		return ret;
	}

	private static String formatParamenter(Class type, Object objValue)
			throws Exception {
		String typeName = type.getName();
		String ret = "";

		if (type.isPrimitive()) {
			if ("int".equals(typeName))
				type = Class.forName("java.lang.Integer");
			else if ("long".equals(typeName))
				type = Class.forName("java.lang.Long");
			else if ("float".equals(typeName))
				type = Class.forName("java.lang.Float");
			else if ("double".equals(typeName))
				type = Class.forName("java.lang.Double");
			else if ("boolean".equals(typeName))
				type = Class.forName("java.lang.Boolean");
			else if ("char".equals(typeName))
				type = Class.forName("java.lang.Character");
			else if ("byte".equals(typeName))
				type = Class.forName("java.lang.Byte");
		}

		if ("java.util.Date".equals(typeName)
				|| "java.sql.Date".equals(typeName)) {
			String value = objValue.toString().trim();
			String ft = "yyyy-MM-dd";
			if (value.indexOf(":") > 0)
				ft += " HH:mm:ss";
			SimpleDateFormat format = new SimpleDateFormat(ft);
			ret = format.format((java.util.Date) objValue);
		} else if ("java.sql.Timestamp".equals(typeName)) {
			String ft = "yyyy-MM-dd HH:mm:ss";
			SimpleDateFormat format = new SimpleDateFormat(ft);
			ret = format.format((java.sql.Timestamp) objValue);
		} else if (typeName.startsWith("java.math.")
				|| "java.lang.Integer".equals(typeName)
				|| "java.lang.Long".equals(typeName)
				|| "java.lang.Float".equals(typeName)
				|| "java.lang.Double".equals(typeName)) {
			NumberFormat format = NumberFormat.getInstance();
			format.setMaximumIntegerDigits(20);
			format.setMinimumIntegerDigits(1);
			format.setGroupingUsed(false);
			ret = format.format(objValue);
		} else {
			ret = objValue.toString();
		}
		return ret;
	}

	private static Object parseParamenter(Class type, Object strValue)
			throws Exception {
		String typeName = type.getName();
		Object ret = null;
		if (type.isPrimitive()) {
			if ("int".equals(typeName))
				type = Class.forName("java.lang.Integer");
			else if ("long".equals(typeName))
				type = Class.forName("java.lang.Long");
			else if ("float".equals(typeName))
				type = Class.forName("java.lang.Float");
			else if ("double".equals(typeName))
				type = Class.forName("java.lang.Double");
			else if ("boolean".equals(typeName))
				type = Class.forName("java.lang.Boolean");
			else if ("char".equals(typeName))
				type = Class.forName("java.lang.Character");
			else if ("byte".equals(typeName))
				type = Class.forName("java.lang.Byte");
		}

		if ("java.util.Date".equals(typeName) || "java.sql.Date".equals(typeName)) {
			String value = strValue.toString().trim();
			if (value.indexOf(":") == -1)
				value += " 00:00:00";
			SimpleDateFormat format = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			ret = format.parse(value);
		} else if (typeName.equals("java.lang.String")) {
			ret = strValue.toString();
		} else {
			if (typeName.equals("java.sql.Timestamp") && strValue != null) {
				String value = strValue.toString().trim();
				int len = value.trim().length();
				if (len > 7 && len < 11) {
					value = value + " 00:00:00.0";
				} else if (len > 11 && value.indexOf(".") == -1) {
					value = value + ".0";
				}
				strValue = value;
			} else if (typeName.equals("java.sql.Date") && strValue != null) {
				String value = strValue.toString().trim();
				if (value.length() > 10) {
					value = value.substring(0, 10);
				}
				strValue = value;
			}
			Method method = type.getMethod("valueOf",
					new Class[] { "java.lang.String".getClass() });
			ret = method.invoke(type, new Object[] { strValue.toString() });
		}

		return ret;
	}
	
	private static Object parseParamenter2(Class type, Object strValue)
			throws Exception {
		String typeName = type.getName();
		Object ret = null;
		if (type.isPrimitive()) {
			if ("int".equals(typeName))
				type = Class.forName("java.lang.Integer");
			else if ("long".equals(typeName))
				type = Class.forName("java.lang.Long");
			else if ("float".equals(typeName))
				type = Class.forName("java.lang.Float");
			else if ("double".equals(typeName))
				type = Class.forName("java.lang.Double");
			else if ("boolean".equals(typeName))
				type = Class.forName("java.lang.Boolean");
			else if ("char".equals(typeName))
				type = Class.forName("java.lang.Character");
			else if ("byte".equals(typeName))
				type = Class.forName("java.lang.Byte");
		}
		
		if ("java.util.Date".equals(typeName) || "java.sql.Date".equals(typeName)) {
			String value = strValue.toString().trim();
			if (value.indexOf(":") == -1)
				value += " 00:00:00";
			SimpleDateFormat format = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			ret = format.parse(value);
		} else if (typeName.equals("java.lang.String")) {
			ret = strValue.toString();
		} else {
			if (typeName.equals("java.sql.Timestamp") && strValue != null) {
				String value = strValue.toString().trim();
				int len = value.trim().length();
				if (len > 7 && len < 11) {
					value = value + " 00:00:00.0";
				} else if (len > 11 && value.indexOf(".") == -1) {
					value = value + ".0";
				}
				strValue = value;
			} else if (typeName.equals("java.sql.Date") && strValue != null) {
				String value = strValue.toString().trim();
				if (value.length() > 10) {
					value = value.substring(0, 10);
				}
				strValue = value;
			}
			Method method = type.getMethod("valueOf",
					new Class[] { "java.lang.String".getClass() });
			ret = method.invoke(type, new Object[] { strValue });
		}
		
		return ret;
	}
}
