var urlPrefix = window.location.origin;
var projectName = "/hibernateMvc/";
var jspPath = urlPrefix+projectName+"autojsp/";
var rootPath = urlPrefix+projectName;
var doc = document;
var map = {};

var companyNature = "["
				+"{\"id\":\"1\",\"value\":\"创业公司\"},"
				+"{\"id\":\"2\",\"value\":\"上市企业\"},"
				+"{\"id\":\"3\",\"value\":\"国营企业\"},"
				+"{\"id\":\"4\",\"value\":\"外资企业\"},"
				+"{\"id\":\"5\",\"value\":\"政府机构\"}"
				+"]";
var companyScale = "["
				+"{\"id\":\"1\",\"value\":\"少于50人\"},"
				+"{\"id\":\"2\",\"value\":\"50-100人\"},"
				+"{\"id\":\"3\",\"value\":\"100-500人\"},"
				+"{\"id\":\"4\",\"value\":\"500-1000人\"},"
				+"{\"id\":\"5\",\"value\":\"1000人以上\"}"
				+"]";
var education = "["
				+"{\"id\":\"1\",\"value\":\"博士\"},"
				+"{\"id\":\"2\",\"value\":\"硕士\"},"
				+"{\"id\":\"3\",\"value\":\"研究生\"},"
				+"{\"id\":\"4\",\"value\":\"本科\"},"
				+"{\"id\":\"5\",\"value\":\"专科\"},"
				+"{\"id\":\"6\",\"value\":\"高中\"},"
				+"{\"id\":\"7\",\"value\":\"其他\"}"
				+"]";
var workTime = "["
				+"{\"id\":\"2\",\"value\":\"3年以下\"},"
				+"{\"id\":\"3\",\"value\":\"3年\"},"
				+"{\"id\":\"4\",\"value\":\"4年\"},"
				+"{\"id\":\"5\",\"value\":\"5年\"},"
				+"{\"id\":\"6\",\"value\":\"6年\"},"
				+"{\"id\":\"7\",\"value\":\"7年\"},"
				+"{\"id\":\"8\",\"value\":\"8年\"},"
				+"{\"id\":\"9\",\"value\":\"9年\"},"
				+"{\"id\":\"10\",\"value\":\"10年\"},"
				+"{\"id\":\"11\",\"value\":\"10年以上\"}"
				+"]";
var currency = "["
				+"{\"id\":\"1\",\"value\":\"人民币\"},"
				+"{\"id\":\"2\",\"value\":\"港币\"},"
				+"{\"id\":\"3\",\"value\":\"新台币\"},"
				+"{\"id\":\"4\",\"value\":\"美金\"}"
				+"]";