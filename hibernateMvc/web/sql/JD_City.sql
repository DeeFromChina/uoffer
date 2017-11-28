/*
Navicat SQL Server Data Transfer

Source Server         : 10.22.50.128
Source Server Version : 105000
Source Host           : 10.22.50.128:1433
Source Database       : boss
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2017-11-28 15:12:28
*/


-- ----------------------------
-- Table structure for JD_City
-- ----------------------------
DROP TABLE [dbo].[JD_City]
GO
CREATE TABLE [dbo].[JD_City] (
[id] int NOT NULL ,
[cityID] int NULL ,
[fatherID] int NULL DEFAULT ((0)) ,
[cityName] varchar(200) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'JD_City', 
'COLUMN', N'cityID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'JD_City'
, @level2type = 'COLUMN', @level2name = N'cityID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'JD_City'
, @level2type = 'COLUMN', @level2name = N'cityID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'JD_City', 
'COLUMN', N'fatherID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'上级城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'JD_City'
, @level2type = 'COLUMN', @level2name = N'fatherID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'上级城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'JD_City'
, @level2type = 'COLUMN', @level2name = N'fatherID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'JD_City', 
'COLUMN', N'cityName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'JD_City'
, @level2type = 'COLUMN', @level2name = N'cityName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'JD_City'
, @level2type = 'COLUMN', @level2name = N'cityName'
GO

-- ----------------------------
-- Records of JD_City
-- ----------------------------
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1', N'110000', null, N'北京市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2', N'120000', null, N'天津市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3', N'130000', null, N'河北省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'4', N'140000', null, N'山西省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'5', N'150000', null, N'内蒙古自治区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'6', N'210000', null, N'辽宁省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'7', N'220000', null, N'吉林省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'8', N'230000', null, N'黑龙江省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'9', N'310000', null, N'上海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'10', N'320000', null, N'江苏省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'11', N'330000', null, N'浙江省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'12', N'340000', null, N'安徽省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'13', N'350000', null, N'福建省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'14', N'360000', null, N'江西省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'15', N'370000', null, N'山东省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'16', N'410000', null, N'河南省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'17', N'420000', null, N'湖北省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'18', N'430000', null, N'湖南省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'19', N'440000', null, N'广东省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'20', N'450000', null, N'广西壮族自治区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'21', N'460000', null, N'海南省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'22', N'500000', null, N'重庆市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'23', N'510000', null, N'四川省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'24', N'520000', null, N'贵州省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'25', N'530000', null, N'云南省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'26', N'540000', null, N'西藏自治区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'27', N'610000', null, N'陕西省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'28', N'620000', null, N'甘肃省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'29', N'630000', null, N'青海省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'30', N'640000', null, N'宁夏回族自治区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'31', N'650000', null, N'新疆维吾尔自治区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'32', N'710000', null, N'台湾省')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'33', N'810000', null, N'东南亚')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'34', N'820000', null, N'西亚')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'35', N'110100', N'110000', N'北京市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'37', N'120100', N'120000', N'天津市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'39', N'130100', N'130000', N'石家庄市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'40', N'130200', N'130000', N'唐山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'41', N'130300', N'130000', N'秦皇岛市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'42', N'130400', N'130000', N'邯郸市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'43', N'130500', N'130000', N'邢台市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'44', N'130600', N'130000', N'保定市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'45', N'130700', N'130000', N'张家口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'46', N'130800', N'130000', N'承德市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'47', N'130900', N'130000', N'沧州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'48', N'131000', N'130000', N'廊坊市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'49', N'131100', N'130000', N'衡水市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'50', N'140100', N'140000', N'太原市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'51', N'140200', N'140000', N'大同市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'52', N'140300', N'140000', N'阳泉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'53', N'140400', N'140000', N'长治市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'54', N'140500', N'140000', N'晋城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'55', N'140600', N'140000', N'朔州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'56', N'140700', N'140000', N'晋中市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'57', N'140800', N'140000', N'运城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'58', N'140900', N'140000', N'忻州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'59', N'141000', N'140000', N'临汾市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'60', N'141100', N'140000', N'吕梁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'61', N'150100', N'150000', N'呼和浩特市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'62', N'150200', N'150000', N'包头市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'63', N'150300', N'150000', N'乌海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'64', N'150400', N'150000', N'赤峰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'65', N'150500', N'150000', N'通辽市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'66', N'150600', N'150000', N'鄂尔多斯市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'67', N'150700', N'150000', N'呼伦贝尔市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'68', N'150800', N'150000', N'巴彦淖尔市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'69', N'150900', N'150000', N'乌兰察布市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'70', N'152200', N'150000', N'兴安盟')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'71', N'152500', N'150000', N'锡林郭勒盟')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'72', N'152900', N'150000', N'阿拉善盟')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'73', N'210100', N'210000', N'沈阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'74', N'210200', N'210000', N'大连市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'75', N'210300', N'210000', N'鞍山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'76', N'210400', N'210000', N'抚顺市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'77', N'210500', N'210000', N'本溪市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'78', N'210600', N'210000', N'丹东市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'79', N'210700', N'210000', N'锦州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'80', N'210800', N'210000', N'营口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'81', N'210900', N'210000', N'阜新市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'82', N'211000', N'210000', N'辽阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'83', N'211100', N'210000', N'盘锦市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'84', N'211200', N'210000', N'铁岭市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'85', N'211300', N'210000', N'朝阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'86', N'211400', N'210000', N'葫芦岛市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'87', N'220100', N'220000', N'长春市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'88', N'220200', N'220000', N'吉林市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'89', N'220300', N'220000', N'四平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'90', N'220400', N'220000', N'辽源市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'91', N'220500', N'220000', N'通化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'92', N'220600', N'220000', N'白山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'93', N'220700', N'220000', N'松原市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'94', N'220800', N'220000', N'白城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'95', N'222400', N'220000', N'延边朝鲜族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'96', N'230100', N'230000', N'哈尔滨市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'97', N'230200', N'230000', N'齐齐哈尔市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'98', N'230300', N'230000', N'鸡西市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'99', N'230400', N'230000', N'鹤岗市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'100', N'230500', N'230000', N'双鸭山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'101', N'230600', N'230000', N'大庆市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'102', N'230700', N'230000', N'伊春市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'103', N'230800', N'230000', N'佳木斯市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'104', N'230900', N'230000', N'七台河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'105', N'231000', N'230000', N'牡丹江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'106', N'231100', N'230000', N'黑河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'107', N'231200', N'230000', N'绥化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'108', N'232700', N'230000', N'大兴安岭地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'109', N'310100', N'310000', N'上海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'111', N'320100', N'320000', N'南京市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'112', N'320200', N'320000', N'无锡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'113', N'320300', N'320000', N'徐州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'114', N'320400', N'320000', N'常州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'115', N'320500', N'320000', N'苏州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'116', N'320600', N'320000', N'南通市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'117', N'320700', N'320000', N'连云港市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'118', N'320800', N'320000', N'淮安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'119', N'320900', N'320000', N'盐城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'120', N'321000', N'320000', N'扬州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'121', N'321100', N'320000', N'镇江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'122', N'321200', N'320000', N'泰州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'123', N'321300', N'320000', N'宿迁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'124', N'330100', N'330000', N'杭州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'125', N'330200', N'330000', N'宁波市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'126', N'330300', N'330000', N'温州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'127', N'330400', N'330000', N'嘉兴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'128', N'330500', N'330000', N'湖州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'129', N'330600', N'330000', N'绍兴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'130', N'330700', N'330000', N'金华市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'131', N'330800', N'330000', N'衢州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'132', N'330900', N'330000', N'舟山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'133', N'331000', N'330000', N'台州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'134', N'331100', N'330000', N'丽水市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'135', N'340100', N'340000', N'合肥市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'136', N'340200', N'340000', N'芜湖市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'137', N'340300', N'340000', N'蚌埠市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'138', N'340400', N'340000', N'淮南市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'139', N'340500', N'340000', N'马鞍山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'140', N'340600', N'340000', N'淮北市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'141', N'340700', N'340000', N'铜陵市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'142', N'340800', N'340000', N'安庆市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'143', N'341000', N'340000', N'黄山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'144', N'341100', N'340000', N'滁州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'145', N'341200', N'340000', N'阜阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'146', N'341300', N'340000', N'宿州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'147', N'341400', N'340000', N'巢湖市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'148', N'341500', N'340000', N'六安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'149', N'341600', N'340000', N'亳州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'150', N'341700', N'340000', N'池州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'151', N'341800', N'340000', N'宣城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'152', N'350100', N'350000', N'福州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'153', N'350200', N'350000', N'厦门市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'154', N'350300', N'350000', N'莆田市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'155', N'350400', N'350000', N'三明市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'156', N'350500', N'350000', N'泉州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'157', N'350600', N'350000', N'漳州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'158', N'350700', N'350000', N'南平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'159', N'350800', N'350000', N'龙岩市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'160', N'350900', N'350000', N'宁德市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'161', N'360100', N'360000', N'南昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'162', N'360200', N'360000', N'景德镇市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'163', N'360300', N'360000', N'萍乡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'164', N'360400', N'360000', N'九江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'165', N'360500', N'360000', N'新余市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'166', N'360600', N'360000', N'鹰潭市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'167', N'360700', N'360000', N'赣州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'168', N'360800', N'360000', N'吉安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'169', N'360900', N'360000', N'宜春市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'170', N'361000', N'360000', N'抚州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'171', N'361100', N'360000', N'上饶市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'172', N'370100', N'370000', N'济南市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'173', N'370200', N'370000', N'青岛市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'174', N'370300', N'370000', N'淄博市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'175', N'370400', N'370000', N'枣庄市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'176', N'370500', N'370000', N'东营市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'177', N'370600', N'370000', N'烟台市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'178', N'370700', N'370000', N'潍坊市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'179', N'370800', N'370000', N'济宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'180', N'370900', N'370000', N'泰安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'181', N'371000', N'370000', N'威海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'182', N'371100', N'370000', N'日照市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'183', N'371200', N'370000', N'莱芜市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'184', N'371300', N'370000', N'临沂市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'185', N'371400', N'370000', N'德州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'186', N'371500', N'370000', N'聊城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'187', N'371600', N'370000', N'滨州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'188', N'371700', N'370000', N'荷泽市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'189', N'410100', N'410000', N'郑州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'190', N'410200', N'410000', N'开封市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'191', N'410300', N'410000', N'洛阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'192', N'410400', N'410000', N'平顶山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'193', N'410500', N'410000', N'安阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'194', N'410600', N'410000', N'鹤壁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'195', N'410700', N'410000', N'新乡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'196', N'410800', N'410000', N'焦作市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'197', N'410900', N'410000', N'濮阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'198', N'411000', N'410000', N'许昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'199', N'411100', N'410000', N'漯河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'200', N'411200', N'410000', N'三门峡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'201', N'411300', N'410000', N'南阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'202', N'411400', N'410000', N'商丘市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'203', N'411500', N'410000', N'信阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'204', N'411600', N'410000', N'周口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'205', N'411700', N'410000', N'驻马店市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'206', N'420100', N'420000', N'武汉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'207', N'420200', N'420000', N'黄石市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'208', N'420300', N'420000', N'十堰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'209', N'420500', N'420000', N'宜昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'210', N'420600', N'420000', N'襄樊市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'211', N'420700', N'420000', N'鄂州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'212', N'420800', N'420000', N'荆门市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'213', N'420900', N'420000', N'孝感市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'214', N'421000', N'420000', N'荆州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'215', N'421100', N'420000', N'黄冈市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'216', N'421200', N'420000', N'咸宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'217', N'421300', N'420000', N'随州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'218', N'422800', N'420000', N'恩施土家族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'219', N'429000', N'420000', N'省直辖行政单位')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'220', N'430100', N'430000', N'长沙市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'221', N'430200', N'430000', N'株洲市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'222', N'430300', N'430000', N'湘潭市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'223', N'430400', N'430000', N'衡阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'224', N'430500', N'430000', N'邵阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'225', N'430600', N'430000', N'岳阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'226', N'430700', N'430000', N'常德市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'227', N'430800', N'430000', N'张家界市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'228', N'430900', N'430000', N'益阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'229', N'431000', N'430000', N'郴州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'230', N'431100', N'430000', N'永州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'231', N'431200', N'430000', N'怀化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'232', N'431300', N'430000', N'娄底市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'233', N'433100', N'430000', N'湘西土家族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'234', N'440100', N'440000', N'广州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'235', N'440200', N'440000', N'韶关市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'236', N'440300', N'440000', N'深圳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'237', N'440400', N'440000', N'珠海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'238', N'440500', N'440000', N'汕头市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'239', N'440600', N'440000', N'佛山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'240', N'440700', N'440000', N'江门市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'241', N'440800', N'440000', N'湛江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'242', N'440900', N'440000', N'茂名市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'243', N'441200', N'440000', N'肇庆市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'244', N'441300', N'440000', N'惠州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'245', N'441400', N'440000', N'梅州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'246', N'441500', N'440000', N'汕尾市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'247', N'441600', N'440000', N'河源市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'248', N'441700', N'440000', N'阳江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'249', N'441800', N'440000', N'清远市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'250', N'441900', N'440000', N'东莞市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'251', N'442000', N'440000', N'中山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'252', N'445100', N'440000', N'潮州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'253', N'445200', N'440000', N'揭阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'254', N'445300', N'440000', N'云浮市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'255', N'450100', N'450000', N'南宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'256', N'450200', N'450000', N'柳州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'257', N'450300', N'450000', N'桂林市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'258', N'450400', N'450000', N'梧州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'259', N'450500', N'450000', N'北海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'260', N'450600', N'450000', N'防城港市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'261', N'450700', N'450000', N'钦州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'262', N'450800', N'450000', N'贵港市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'263', N'450900', N'450000', N'玉林市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'264', N'451000', N'450000', N'百色市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'265', N'451100', N'450000', N'贺州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'266', N'451200', N'450000', N'河池市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'267', N'451300', N'450000', N'来宾市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'268', N'451400', N'450000', N'崇左市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'269', N'460100', N'460000', N'海口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'270', N'460200', N'460000', N'三亚市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'271', N'469000', N'460000', N'省直辖县级行政单位')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'272', N'500100', N'500000', N'重庆市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'275', N'510100', N'510000', N'成都市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'276', N'510300', N'510000', N'自贡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'277', N'510400', N'510000', N'攀枝花市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'278', N'510500', N'510000', N'泸州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'279', N'510600', N'510000', N'德阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'280', N'510700', N'510000', N'绵阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'281', N'510800', N'510000', N'广元市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'282', N'510900', N'510000', N'遂宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'283', N'511000', N'510000', N'内江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'284', N'511100', N'510000', N'乐山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'285', N'511300', N'510000', N'南充市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'286', N'511400', N'510000', N'眉山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'287', N'511500', N'510000', N'宜宾市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'288', N'511600', N'510000', N'广安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'289', N'511700', N'510000', N'达州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'290', N'511800', N'510000', N'雅安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'291', N'511900', N'510000', N'巴中市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'292', N'512000', N'510000', N'资阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'293', N'513200', N'510000', N'阿坝藏族羌族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'294', N'513300', N'510000', N'甘孜藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'295', N'513400', N'510000', N'凉山彝族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'296', N'520100', N'520000', N'贵阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'297', N'520200', N'520000', N'六盘水市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'298', N'520300', N'520000', N'遵义市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'299', N'520400', N'520000', N'安顺市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'300', N'522200', N'520000', N'铜仁地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'301', N'522300', N'520000', N'黔西南布依族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'302', N'522400', N'520000', N'毕节地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'303', N'522600', N'520000', N'黔东南苗族侗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'304', N'522700', N'520000', N'黔南布依族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'305', N'530100', N'530000', N'昆明市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'306', N'530300', N'530000', N'曲靖市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'307', N'530400', N'530000', N'玉溪市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'308', N'530500', N'530000', N'保山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'309', N'530600', N'530000', N'昭通市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'310', N'530700', N'530000', N'丽江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'311', N'530800', N'530000', N'思茅市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'312', N'530900', N'530000', N'临沧市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'313', N'532300', N'530000', N'楚雄彝族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'314', N'532500', N'530000', N'红河哈尼族彝族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'315', N'532600', N'530000', N'文山壮族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'316', N'532800', N'530000', N'西双版纳傣族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'317', N'532900', N'530000', N'大理白族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'318', N'533100', N'530000', N'德宏傣族景颇族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'319', N'533300', N'530000', N'怒江傈僳族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'320', N'533400', N'530000', N'迪庆藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'321', N'540100', N'540000', N'拉萨市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'322', N'542100', N'540000', N'昌都地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'323', N'542200', N'540000', N'山南地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'324', N'542300', N'540000', N'日喀则地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'325', N'542400', N'540000', N'那曲地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'326', N'542500', N'540000', N'阿里地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'327', N'542600', N'540000', N'林芝地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'328', N'610100', N'610000', N'西安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'329', N'610200', N'610000', N'铜川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'330', N'610300', N'610000', N'宝鸡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'331', N'610400', N'610000', N'咸阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'332', N'610500', N'610000', N'渭南市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'333', N'610600', N'610000', N'延安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'334', N'610700', N'610000', N'汉中市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'335', N'610800', N'610000', N'榆林市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'336', N'610900', N'610000', N'安康市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'337', N'611000', N'610000', N'商洛市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'338', N'620100', N'620000', N'兰州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'339', N'620200', N'620000', N'嘉峪关市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'340', N'620300', N'620000', N'金昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'341', N'620400', N'620000', N'白银市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'342', N'620500', N'620000', N'天水市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'343', N'620600', N'620000', N'武威市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'344', N'620700', N'620000', N'张掖市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'345', N'620800', N'620000', N'平凉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'346', N'620900', N'620000', N'酒泉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'347', N'621000', N'620000', N'庆阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'348', N'621100', N'620000', N'定西市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'349', N'621200', N'620000', N'陇南市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'350', N'622900', N'620000', N'临夏回族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'351', N'623000', N'620000', N'甘南藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'352', N'630100', N'630000', N'西宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'353', N'632100', N'630000', N'海东地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'354', N'632200', N'630000', N'海北藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'355', N'632300', N'630000', N'黄南藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'356', N'632500', N'630000', N'海南藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'357', N'632600', N'630000', N'果洛藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'358', N'632700', N'630000', N'玉树藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'359', N'632800', N'630000', N'海西蒙古族藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'360', N'640100', N'640000', N'银川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'361', N'640200', N'640000', N'石嘴山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'362', N'640300', N'640000', N'吴忠市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'363', N'640400', N'640000', N'固原市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'364', N'640500', N'640000', N'中卫市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'365', N'650100', N'650000', N'乌鲁木齐市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'366', N'650200', N'650000', N'克拉玛依市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'367', N'652100', N'650000', N'吐鲁番地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'368', N'652200', N'650000', N'哈密地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'369', N'652300', N'650000', N'昌吉回族自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'370', N'652700', N'650000', N'博尔塔拉蒙古自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'371', N'652800', N'650000', N'巴音郭楞蒙古自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'372', N'652900', N'650000', N'阿克苏地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'373', N'653000', N'650000', N'克孜勒苏柯尔克孜自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'374', N'653100', N'650000', N'喀什地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'375', N'653200', N'650000', N'和田地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'376', N'654000', N'650000', N'伊犁哈萨克自治州')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'377', N'654200', N'650000', N'塔城地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'378', N'654300', N'650000', N'阿勒泰地区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'379', N'659000', N'650000', N'省直辖行政单位')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'380', N'110101', N'110100', N'东城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'381', N'110102', N'110100', N'西城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'382', N'110103', N'110100', N'崇文区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'383', N'110104', N'110100', N'宣武区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'384', N'110105', N'110100', N'朝阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'385', N'110106', N'110100', N'丰台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'386', N'110107', N'110100', N'石景山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'387', N'110108', N'110100', N'海淀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'388', N'110109', N'110100', N'门头沟区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'389', N'110111', N'110100', N'房山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'390', N'110112', N'110100', N'通州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'391', N'110113', N'110100', N'顺义区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'392', N'110114', N'110100', N'昌平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'393', N'110115', N'110100', N'大兴区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'394', N'110116', N'110100', N'怀柔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'395', N'110117', N'110100', N'平谷区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'396', N'110228', N'110100', N'密云县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'397', N'110229', N'110100', N'延庆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'398', N'120101', N'120100', N'和平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'399', N'120102', N'120100', N'河东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'400', N'120103', N'120100', N'河西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'401', N'120104', N'120100', N'南开区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'402', N'120105', N'120100', N'河北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'403', N'120106', N'120100', N'红桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'404', N'120107', N'120100', N'塘沽区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'405', N'120108', N'120100', N'汉沽区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'406', N'120109', N'120100', N'大港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'407', N'120110', N'120100', N'东丽区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'408', N'120111', N'120100', N'西青区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'409', N'120112', N'120100', N'津南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'410', N'120113', N'120100', N'北辰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'411', N'120114', N'120100', N'武清区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'412', N'120115', N'120100', N'宝坻区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'413', N'120221', N'120100', N'宁河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'414', N'120223', N'120100', N'静海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'415', N'120225', N'120100', N'蓟　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'416', N'130101', N'130100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'417', N'130102', N'130100', N'长安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'418', N'130103', N'130100', N'桥东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'419', N'130104', N'130100', N'桥西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'420', N'130105', N'130100', N'新华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'421', N'130107', N'130100', N'井陉矿区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'422', N'130108', N'130100', N'裕华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'423', N'130121', N'130100', N'井陉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'424', N'130123', N'130100', N'正定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'425', N'130124', N'130100', N'栾城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'426', N'130125', N'130100', N'行唐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'427', N'130126', N'130100', N'灵寿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'428', N'130127', N'130100', N'高邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'429', N'130128', N'130100', N'深泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'430', N'130129', N'130100', N'赞皇县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'431', N'130130', N'130100', N'无极县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'432', N'130131', N'130100', N'平山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'433', N'130132', N'130100', N'元氏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'434', N'130133', N'130100', N'赵　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'435', N'130181', N'130100', N'辛集市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'436', N'130182', N'130100', N'藁城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'437', N'130183', N'130100', N'晋州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'438', N'130184', N'130100', N'新乐市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'439', N'130185', N'130100', N'鹿泉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'440', N'130201', N'130200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'441', N'130202', N'130200', N'路南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'442', N'130203', N'130200', N'路北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'443', N'130204', N'130200', N'古冶区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'444', N'130205', N'130200', N'开平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'445', N'130207', N'130200', N'丰南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'446', N'130208', N'130200', N'丰润区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'447', N'130223', N'130200', N'滦　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'448', N'130224', N'130200', N'滦南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'449', N'130225', N'130200', N'乐亭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'450', N'130227', N'130200', N'迁西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'451', N'130229', N'130200', N'玉田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'452', N'130230', N'130200', N'唐海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'453', N'130281', N'130200', N'遵化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'454', N'130283', N'130200', N'迁安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'455', N'130301', N'130300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'456', N'130302', N'130300', N'海港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'457', N'130303', N'130300', N'山海关区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'458', N'130304', N'130300', N'北戴河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'459', N'130321', N'130300', N'青龙满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'460', N'130322', N'130300', N'昌黎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'461', N'130323', N'130300', N'抚宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'462', N'130324', N'130300', N'卢龙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'463', N'130401', N'130400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'464', N'130402', N'130400', N'邯山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'465', N'130403', N'130400', N'丛台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'466', N'130404', N'130400', N'复兴区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'467', N'130406', N'130400', N'峰峰矿区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'468', N'130421', N'130400', N'邯郸县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'469', N'130423', N'130400', N'临漳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'470', N'130424', N'130400', N'成安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'471', N'130425', N'130400', N'大名县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'472', N'130426', N'130400', N'涉　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'473', N'130427', N'130400', N'磁　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'474', N'130428', N'130400', N'肥乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'475', N'130429', N'130400', N'永年县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'476', N'130430', N'130400', N'邱　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'477', N'130431', N'130400', N'鸡泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'478', N'130432', N'130400', N'广平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'479', N'130433', N'130400', N'馆陶县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'480', N'130434', N'130400', N'魏　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'481', N'130435', N'130400', N'曲周县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'482', N'130481', N'130400', N'武安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'483', N'130501', N'130500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'484', N'130502', N'130500', N'桥东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'485', N'130503', N'130500', N'桥西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'486', N'130521', N'130500', N'邢台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'487', N'130522', N'130500', N'临城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'488', N'130523', N'130500', N'内丘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'489', N'130524', N'130500', N'柏乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'490', N'130525', N'130500', N'隆尧县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'491', N'130526', N'130500', N'任　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'492', N'130527', N'130500', N'南和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'493', N'130528', N'130500', N'宁晋县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'494', N'130529', N'130500', N'巨鹿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'495', N'130530', N'130500', N'新河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'496', N'130531', N'130500', N'广宗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'497', N'130532', N'130500', N'平乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'498', N'130533', N'130500', N'威　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'499', N'130534', N'130500', N'清河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'500', N'130535', N'130500', N'临西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'501', N'130581', N'130500', N'南宫市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'502', N'130582', N'130500', N'沙河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'503', N'130601', N'130600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'504', N'130602', N'130600', N'新市区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'505', N'130603', N'130600', N'北市区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'506', N'130604', N'130600', N'南市区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'507', N'130621', N'130600', N'满城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'508', N'130622', N'130600', N'清苑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'509', N'130623', N'130600', N'涞水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'510', N'130624', N'130600', N'阜平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'511', N'130625', N'130600', N'徐水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'512', N'130626', N'130600', N'定兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'513', N'130627', N'130600', N'唐　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'514', N'130628', N'130600', N'高阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'515', N'130629', N'130600', N'容城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'516', N'130630', N'130600', N'涞源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'517', N'130631', N'130600', N'望都县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'518', N'130632', N'130600', N'安新县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'519', N'130633', N'130600', N'易　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'520', N'130634', N'130600', N'曲阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'521', N'130635', N'130600', N'蠡　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'522', N'130636', N'130600', N'顺平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'523', N'130637', N'130600', N'博野县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'524', N'130638', N'130600', N'雄　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'525', N'130681', N'130600', N'涿州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'526', N'130682', N'130600', N'定州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'527', N'130683', N'130600', N'安国市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'528', N'130684', N'130600', N'高碑店市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'529', N'130701', N'130700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'530', N'130702', N'130700', N'桥东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'531', N'130703', N'130700', N'桥西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'532', N'130705', N'130700', N'宣化区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'533', N'130706', N'130700', N'下花园区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'534', N'130721', N'130700', N'宣化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'535', N'130722', N'130700', N'张北县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'536', N'130723', N'130700', N'康保县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'537', N'130724', N'130700', N'沽源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'538', N'130725', N'130700', N'尚义县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'539', N'130726', N'130700', N'蔚　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'540', N'130727', N'130700', N'阳原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'541', N'130728', N'130700', N'怀安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'542', N'130729', N'130700', N'万全县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'543', N'130730', N'130700', N'怀来县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'544', N'130731', N'130700', N'涿鹿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'545', N'130732', N'130700', N'赤城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'546', N'130733', N'130700', N'崇礼县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'547', N'130801', N'130800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'548', N'130802', N'130800', N'双桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'549', N'130803', N'130800', N'双滦区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'550', N'130804', N'130800', N'鹰手营子矿区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'551', N'130821', N'130800', N'承德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'552', N'130822', N'130800', N'兴隆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'553', N'130823', N'130800', N'平泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'554', N'130824', N'130800', N'滦平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'555', N'130825', N'130800', N'隆化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'556', N'130826', N'130800', N'丰宁满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'557', N'130827', N'130800', N'宽城满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'558', N'130828', N'130800', N'围场满族蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'559', N'130901', N'130900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'560', N'130902', N'130900', N'新华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'561', N'130903', N'130900', N'运河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'562', N'130921', N'130900', N'沧　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'563', N'130922', N'130900', N'青　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'564', N'130923', N'130900', N'东光县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'565', N'130924', N'130900', N'海兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'566', N'130925', N'130900', N'盐山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'567', N'130926', N'130900', N'肃宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'568', N'130927', N'130900', N'南皮县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'569', N'130928', N'130900', N'吴桥县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'570', N'130929', N'130900', N'献　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'571', N'130930', N'130900', N'孟村回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'572', N'130981', N'130900', N'泊头市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'573', N'130982', N'130900', N'任丘市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'574', N'130983', N'130900', N'黄骅市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'575', N'130984', N'130900', N'河间市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'576', N'131001', N'131000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'577', N'131002', N'131000', N'安次区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'578', N'131003', N'131000', N'广阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'579', N'131022', N'131000', N'固安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'580', N'131023', N'131000', N'永清县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'581', N'131024', N'131000', N'香河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'582', N'131025', N'131000', N'大城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'583', N'131026', N'131000', N'文安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'584', N'131028', N'131000', N'大厂回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'585', N'131081', N'131000', N'霸州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'586', N'131082', N'131000', N'三河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'587', N'131101', N'131100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'588', N'131102', N'131100', N'桃城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'589', N'131121', N'131100', N'枣强县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'590', N'131122', N'131100', N'武邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'591', N'131123', N'131100', N'武强县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'592', N'131124', N'131100', N'饶阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'593', N'131125', N'131100', N'安平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'594', N'131126', N'131100', N'故城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'595', N'131127', N'131100', N'景　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'596', N'131128', N'131100', N'阜城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'597', N'131181', N'131100', N'冀州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'598', N'131182', N'131100', N'深州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'599', N'140101', N'140100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'600', N'140105', N'140100', N'小店区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'601', N'140106', N'140100', N'迎泽区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'602', N'140107', N'140100', N'杏花岭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'603', N'140108', N'140100', N'尖草坪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'604', N'140109', N'140100', N'万柏林区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'605', N'140110', N'140100', N'晋源区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'606', N'140121', N'140100', N'清徐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'607', N'140122', N'140100', N'阳曲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'608', N'140123', N'140100', N'娄烦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'609', N'140181', N'140100', N'古交市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'610', N'140201', N'140200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'611', N'140202', N'140200', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'612', N'140203', N'140200', N'矿　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'613', N'140211', N'140200', N'南郊区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'614', N'140212', N'140200', N'新荣区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'615', N'140221', N'140200', N'阳高县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'616', N'140222', N'140200', N'天镇县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'617', N'140223', N'140200', N'广灵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'618', N'140224', N'140200', N'灵丘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'619', N'140225', N'140200', N'浑源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'620', N'140226', N'140200', N'左云县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'621', N'140227', N'140200', N'大同县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'622', N'140301', N'140300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'623', N'140302', N'140300', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'624', N'140303', N'140300', N'矿　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'625', N'140311', N'140300', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'626', N'140321', N'140300', N'平定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'627', N'140322', N'140300', N'盂　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'628', N'140401', N'140400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'629', N'140402', N'140400', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'630', N'140411', N'140400', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'631', N'140421', N'140400', N'长治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'632', N'140423', N'140400', N'襄垣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'633', N'140424', N'140400', N'屯留县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'634', N'140425', N'140400', N'平顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'635', N'140426', N'140400', N'黎城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'636', N'140427', N'140400', N'壶关县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'637', N'140428', N'140400', N'长子县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'638', N'140429', N'140400', N'武乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'639', N'140430', N'140400', N'沁　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'640', N'140431', N'140400', N'沁源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'641', N'140481', N'140400', N'潞城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'642', N'140501', N'140500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'643', N'140502', N'140500', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'644', N'140521', N'140500', N'沁水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'645', N'140522', N'140500', N'阳城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'646', N'140524', N'140500', N'陵川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'647', N'140525', N'140500', N'泽州县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'648', N'140581', N'140500', N'高平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'649', N'140601', N'140600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'650', N'140602', N'140600', N'朔城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'651', N'140603', N'140600', N'平鲁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'652', N'140621', N'140600', N'山阴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'653', N'140622', N'140600', N'应　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'654', N'140623', N'140600', N'右玉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'655', N'140624', N'140600', N'怀仁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'656', N'140701', N'140700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'657', N'140702', N'140700', N'榆次区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'658', N'140721', N'140700', N'榆社县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'659', N'140722', N'140700', N'左权县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'660', N'140723', N'140700', N'和顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'661', N'140724', N'140700', N'昔阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'662', N'140725', N'140700', N'寿阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'663', N'140726', N'140700', N'太谷县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'664', N'140727', N'140700', N'祁　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'665', N'140728', N'140700', N'平遥县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'666', N'140729', N'140700', N'灵石县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'667', N'140781', N'140700', N'介休市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'668', N'140801', N'140800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'669', N'140802', N'140800', N'盐湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'670', N'140821', N'140800', N'临猗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'671', N'140822', N'140800', N'万荣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'672', N'140823', N'140800', N'闻喜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'673', N'140824', N'140800', N'稷山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'674', N'140825', N'140800', N'新绛县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'675', N'140826', N'140800', N'绛　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'676', N'140827', N'140800', N'垣曲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'677', N'140828', N'140800', N'夏　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'678', N'140829', N'140800', N'平陆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'679', N'140830', N'140800', N'芮城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'680', N'140881', N'140800', N'永济市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'681', N'140882', N'140800', N'河津市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'682', N'140901', N'140900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'683', N'140902', N'140900', N'忻府区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'684', N'140921', N'140900', N'定襄县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'685', N'140922', N'140900', N'五台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'686', N'140923', N'140900', N'代　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'687', N'140924', N'140900', N'繁峙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'688', N'140925', N'140900', N'宁武县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'689', N'140926', N'140900', N'静乐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'690', N'140927', N'140900', N'神池县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'691', N'140928', N'140900', N'五寨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'692', N'140929', N'140900', N'岢岚县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'693', N'140930', N'140900', N'河曲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'694', N'140931', N'140900', N'保德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'695', N'140932', N'140900', N'偏关县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'696', N'140981', N'140900', N'原平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'697', N'141001', N'141000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'698', N'141002', N'141000', N'尧都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'699', N'141021', N'141000', N'曲沃县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'700', N'141022', N'141000', N'翼城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'701', N'141023', N'141000', N'襄汾县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'702', N'141024', N'141000', N'洪洞县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'703', N'141025', N'141000', N'古　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'704', N'141026', N'141000', N'安泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'705', N'141027', N'141000', N'浮山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'706', N'141028', N'141000', N'吉　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'707', N'141029', N'141000', N'乡宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'708', N'141030', N'141000', N'大宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'709', N'141031', N'141000', N'隰　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'710', N'141032', N'141000', N'永和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'711', N'141033', N'141000', N'蒲　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'712', N'141034', N'141000', N'汾西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'713', N'141081', N'141000', N'侯马市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'714', N'141082', N'141000', N'霍州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'715', N'141101', N'141100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'716', N'141102', N'141100', N'离石区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'717', N'141121', N'141100', N'文水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'718', N'141122', N'141100', N'交城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'719', N'141123', N'141100', N'兴　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'720', N'141124', N'141100', N'临　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'721', N'141125', N'141100', N'柳林县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'722', N'141126', N'141100', N'石楼县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'723', N'141127', N'141100', N'岚　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'724', N'141128', N'141100', N'方山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'725', N'141129', N'141100', N'中阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'726', N'141130', N'141100', N'交口县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'727', N'141181', N'141100', N'孝义市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'728', N'141182', N'141100', N'汾阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'729', N'150101', N'150100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'730', N'150102', N'150100', N'新城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'731', N'150103', N'150100', N'回民区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'732', N'150104', N'150100', N'玉泉区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'733', N'150105', N'150100', N'赛罕区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'734', N'150121', N'150100', N'土默特左旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'735', N'150122', N'150100', N'托克托县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'736', N'150123', N'150100', N'和林格尔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'737', N'150124', N'150100', N'清水河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'738', N'150125', N'150100', N'武川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'739', N'150201', N'150200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'740', N'150202', N'150200', N'东河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'741', N'150203', N'150200', N'昆都仑区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'742', N'150204', N'150200', N'青山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'743', N'150205', N'150200', N'石拐区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'744', N'150206', N'150200', N'白云矿区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'745', N'150207', N'150200', N'九原区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'746', N'150221', N'150200', N'土默特右旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'747', N'150222', N'150200', N'固阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'748', N'150223', N'150200', N'达尔罕茂明安联合旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'749', N'150301', N'150300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'750', N'150302', N'150300', N'海勃湾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'751', N'150303', N'150300', N'海南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'752', N'150304', N'150300', N'乌达区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'753', N'150401', N'150400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'754', N'150402', N'150400', N'红山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'755', N'150403', N'150400', N'元宝山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'756', N'150404', N'150400', N'松山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'757', N'150421', N'150400', N'阿鲁科尔沁旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'758', N'150422', N'150400', N'巴林左旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'759', N'150423', N'150400', N'巴林右旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'760', N'150424', N'150400', N'林西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'761', N'150425', N'150400', N'克什克腾旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'762', N'150426', N'150400', N'翁牛特旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'763', N'150428', N'150400', N'喀喇沁旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'764', N'150429', N'150400', N'宁城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'765', N'150430', N'150400', N'敖汉旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'766', N'150501', N'150500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'767', N'150502', N'150500', N'科尔沁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'768', N'150521', N'150500', N'科尔沁左翼中旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'769', N'150522', N'150500', N'科尔沁左翼后旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'770', N'150523', N'150500', N'开鲁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'771', N'150524', N'150500', N'库伦旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'772', N'150525', N'150500', N'奈曼旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'773', N'150526', N'150500', N'扎鲁特旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'774', N'150581', N'150500', N'霍林郭勒市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'775', N'150602', N'150600', N'东胜区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'776', N'150621', N'150600', N'达拉特旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'777', N'150622', N'150600', N'准格尔旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'778', N'150623', N'150600', N'鄂托克前旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'779', N'150624', N'150600', N'鄂托克旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'780', N'150625', N'150600', N'杭锦旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'781', N'150626', N'150600', N'乌审旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'782', N'150627', N'150600', N'伊金霍洛旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'783', N'150701', N'150700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'784', N'150702', N'150700', N'海拉尔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'785', N'150721', N'150700', N'阿荣旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'786', N'150722', N'150700', N'莫力达瓦达斡尔族自治旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'787', N'150723', N'150700', N'鄂伦春自治旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'788', N'150724', N'150700', N'鄂温克族自治旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'789', N'150725', N'150700', N'陈巴尔虎旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'790', N'150726', N'150700', N'新巴尔虎左旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'791', N'150727', N'150700', N'新巴尔虎右旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'792', N'150781', N'150700', N'满洲里市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'793', N'150782', N'150700', N'牙克石市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'794', N'150783', N'150700', N'扎兰屯市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'795', N'150784', N'150700', N'额尔古纳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'796', N'150785', N'150700', N'根河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'797', N'150801', N'150800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'798', N'150802', N'150800', N'临河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'799', N'150821', N'150800', N'五原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'800', N'150822', N'150800', N'磴口县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'801', N'150823', N'150800', N'乌拉特前旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'802', N'150824', N'150800', N'乌拉特中旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'803', N'150825', N'150800', N'乌拉特后旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'804', N'150826', N'150800', N'杭锦后旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'805', N'150901', N'150900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'806', N'150902', N'150900', N'集宁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'807', N'150921', N'150900', N'卓资县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'808', N'150922', N'150900', N'化德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'809', N'150923', N'150900', N'商都县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'810', N'150924', N'150900', N'兴和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'811', N'150925', N'150900', N'凉城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'812', N'150926', N'150900', N'察哈尔右翼前旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'813', N'150927', N'150900', N'察哈尔右翼中旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'814', N'150928', N'150900', N'察哈尔右翼后旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'815', N'150929', N'150900', N'四子王旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'816', N'150981', N'150900', N'丰镇市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'817', N'152201', N'152200', N'乌兰浩特市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'818', N'152202', N'152200', N'阿尔山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'819', N'152221', N'152200', N'科尔沁右翼前旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'820', N'152222', N'152200', N'科尔沁右翼中旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'821', N'152223', N'152200', N'扎赉特旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'822', N'152224', N'152200', N'突泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'823', N'152501', N'152500', N'二连浩特市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'824', N'152502', N'152500', N'锡林浩特市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'825', N'152522', N'152500', N'阿巴嘎旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'826', N'152523', N'152500', N'苏尼特左旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'827', N'152524', N'152500', N'苏尼特右旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'828', N'152525', N'152500', N'东乌珠穆沁旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'829', N'152526', N'152500', N'西乌珠穆沁旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'830', N'152527', N'152500', N'太仆寺旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'831', N'152528', N'152500', N'镶黄旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'832', N'152529', N'152500', N'正镶白旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'833', N'152530', N'152500', N'正蓝旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'834', N'152531', N'152500', N'多伦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'835', N'152921', N'152900', N'阿拉善左旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'836', N'152922', N'152900', N'阿拉善右旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'837', N'152923', N'152900', N'额济纳旗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'838', N'210101', N'210100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'839', N'210102', N'210100', N'和平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'840', N'210103', N'210100', N'沈河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'841', N'210104', N'210100', N'大东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'842', N'210105', N'210100', N'皇姑区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'843', N'210106', N'210100', N'铁西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'844', N'210111', N'210100', N'苏家屯区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'845', N'210112', N'210100', N'东陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'846', N'210113', N'210100', N'新城子区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'847', N'210114', N'210100', N'于洪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'848', N'210122', N'210100', N'辽中县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'849', N'210123', N'210100', N'康平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'850', N'210124', N'210100', N'法库县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'851', N'210181', N'210100', N'新民市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'852', N'210201', N'210200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'853', N'210202', N'210200', N'中山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'854', N'210203', N'210200', N'西岗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'855', N'210204', N'210200', N'沙河口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'856', N'210211', N'210200', N'甘井子区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'857', N'210212', N'210200', N'旅顺口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'858', N'210213', N'210200', N'金州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'859', N'210224', N'210200', N'长海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'860', N'210281', N'210200', N'瓦房店市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'861', N'210282', N'210200', N'普兰店市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'862', N'210283', N'210200', N'庄河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'863', N'210301', N'210300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'864', N'210302', N'210300', N'铁东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'865', N'210303', N'210300', N'铁西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'866', N'210304', N'210300', N'立山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'867', N'210311', N'210300', N'千山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'868', N'210321', N'210300', N'台安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'869', N'210323', N'210300', N'岫岩满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'870', N'210381', N'210300', N'海城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'871', N'210401', N'210400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'872', N'210402', N'210400', N'新抚区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'873', N'210403', N'210400', N'东洲区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'874', N'210404', N'210400', N'望花区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'875', N'210411', N'210400', N'顺城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'876', N'210421', N'210400', N'抚顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'877', N'210422', N'210400', N'新宾满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'878', N'210423', N'210400', N'清原满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'879', N'210501', N'210500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'880', N'210502', N'210500', N'平山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'881', N'210503', N'210500', N'溪湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'882', N'210504', N'210500', N'明山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'883', N'210505', N'210500', N'南芬区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'884', N'210521', N'210500', N'本溪满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'885', N'210522', N'210500', N'桓仁满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'886', N'210601', N'210600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'887', N'210602', N'210600', N'元宝区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'888', N'210603', N'210600', N'振兴区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'889', N'210604', N'210600', N'振安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'890', N'210624', N'210600', N'宽甸满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'891', N'210681', N'210600', N'东港市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'892', N'210682', N'210600', N'凤城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'893', N'210701', N'210700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'894', N'210702', N'210700', N'古塔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'895', N'210703', N'210700', N'凌河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'896', N'210711', N'210700', N'太和区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'897', N'210726', N'210700', N'黑山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'898', N'210727', N'210700', N'义　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'899', N'210781', N'210700', N'凌海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'900', N'210782', N'210700', N'北宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'901', N'210801', N'210800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'902', N'210802', N'210800', N'站前区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'903', N'210803', N'210800', N'西市区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'904', N'210804', N'210800', N'鲅鱼圈区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'905', N'210811', N'210800', N'老边区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'906', N'210881', N'210800', N'盖州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'907', N'210882', N'210800', N'大石桥市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'908', N'210901', N'210900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'909', N'210902', N'210900', N'海州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'910', N'210903', N'210900', N'新邱区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'911', N'210904', N'210900', N'太平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'912', N'210905', N'210900', N'清河门区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'913', N'210911', N'210900', N'细河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'914', N'210921', N'210900', N'阜新蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'915', N'210922', N'210900', N'彰武县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'916', N'211001', N'211000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'917', N'211002', N'211000', N'白塔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'918', N'211003', N'211000', N'文圣区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'919', N'211004', N'211000', N'宏伟区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'920', N'211005', N'211000', N'弓长岭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'921', N'211011', N'211000', N'太子河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'922', N'211021', N'211000', N'辽阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'923', N'211081', N'211000', N'灯塔市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'924', N'211101', N'211100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'925', N'211102', N'211100', N'双台子区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'926', N'211103', N'211100', N'兴隆台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'927', N'211121', N'211100', N'大洼县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'928', N'211122', N'211100', N'盘山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'929', N'211201', N'211200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'930', N'211202', N'211200', N'银州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'931', N'211204', N'211200', N'清河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'932', N'211221', N'211200', N'铁岭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'933', N'211223', N'211200', N'西丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'934', N'211224', N'211200', N'昌图县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'935', N'211281', N'211200', N'调兵山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'936', N'211282', N'211200', N'开原市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'937', N'211301', N'211300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'938', N'211302', N'211300', N'双塔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'939', N'211303', N'211300', N'龙城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'940', N'211321', N'211300', N'朝阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'941', N'211322', N'211300', N'建平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'942', N'211324', N'211300', N'喀喇沁左翼蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'943', N'211381', N'211300', N'北票市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'944', N'211382', N'211300', N'凌源市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'945', N'211401', N'211400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'946', N'211402', N'211400', N'连山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'947', N'211403', N'211400', N'龙港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'948', N'211404', N'211400', N'南票区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'949', N'211421', N'211400', N'绥中县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'950', N'211422', N'211400', N'建昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'951', N'211481', N'211400', N'兴城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'952', N'220101', N'220100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'953', N'220102', N'220100', N'南关区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'954', N'220103', N'220100', N'宽城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'955', N'220104', N'220100', N'朝阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'956', N'220105', N'220100', N'二道区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'957', N'220106', N'220100', N'绿园区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'958', N'220112', N'220100', N'双阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'959', N'220122', N'220100', N'农安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'960', N'220181', N'220100', N'九台市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'961', N'220182', N'220100', N'榆树市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'962', N'220183', N'220100', N'德惠市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'963', N'220201', N'220200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'964', N'220202', N'220200', N'昌邑区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'965', N'220203', N'220200', N'龙潭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'966', N'220204', N'220200', N'船营区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'967', N'220211', N'220200', N'丰满区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'968', N'220221', N'220200', N'永吉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'969', N'220281', N'220200', N'蛟河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'970', N'220282', N'220200', N'桦甸市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'971', N'220283', N'220200', N'舒兰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'972', N'220284', N'220200', N'磐石市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'973', N'220301', N'220300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'974', N'220302', N'220300', N'铁西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'975', N'220303', N'220300', N'铁东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'976', N'220322', N'220300', N'梨树县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'977', N'220323', N'220300', N'伊通满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'978', N'220381', N'220300', N'公主岭市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'979', N'220382', N'220300', N'双辽市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'980', N'220401', N'220400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'981', N'220402', N'220400', N'龙山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'982', N'220403', N'220400', N'西安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'983', N'220421', N'220400', N'东丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'984', N'220422', N'220400', N'东辽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'985', N'220501', N'220500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'986', N'220502', N'220500', N'东昌区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'987', N'220503', N'220500', N'二道江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'988', N'220521', N'220500', N'通化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'989', N'220523', N'220500', N'辉南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'990', N'220524', N'220500', N'柳河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'991', N'220581', N'220500', N'梅河口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'992', N'220582', N'220500', N'集安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'993', N'220601', N'220600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'994', N'220602', N'220600', N'八道江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'995', N'220621', N'220600', N'抚松县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'996', N'220622', N'220600', N'靖宇县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'997', N'220623', N'220600', N'长白朝鲜族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'998', N'220625', N'220600', N'江源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'999', N'220681', N'220600', N'临江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1000', N'220701', N'220700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1001', N'220702', N'220700', N'宁江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1002', N'220721', N'220700', N'前郭尔罗斯蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1003', N'220722', N'220700', N'长岭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1004', N'220723', N'220700', N'乾安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1005', N'220724', N'220700', N'扶余县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1006', N'220801', N'220800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1007', N'220802', N'220800', N'洮北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1008', N'220821', N'220800', N'镇赉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1009', N'220822', N'220800', N'通榆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1010', N'220881', N'220800', N'洮南市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1011', N'220882', N'220800', N'大安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1012', N'222401', N'222400', N'延吉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1013', N'222402', N'222400', N'图们市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1014', N'222403', N'222400', N'敦化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1015', N'222404', N'222400', N'珲春市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1016', N'222405', N'222400', N'龙井市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1017', N'222406', N'222400', N'和龙市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1018', N'222424', N'222400', N'汪清县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1019', N'222426', N'222400', N'安图县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1020', N'230101', N'230100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1021', N'230102', N'230100', N'道里区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1022', N'230103', N'230100', N'南岗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1023', N'230104', N'230100', N'道外区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1024', N'230106', N'230100', N'香坊区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1025', N'230107', N'230100', N'动力区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1026', N'230108', N'230100', N'平房区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1027', N'230109', N'230100', N'松北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1028', N'230111', N'230100', N'呼兰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1029', N'230123', N'230100', N'依兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1030', N'230124', N'230100', N'方正县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1031', N'230125', N'230100', N'宾　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1032', N'230126', N'230100', N'巴彦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1033', N'230127', N'230100', N'木兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1034', N'230128', N'230100', N'通河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1035', N'230129', N'230100', N'延寿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1036', N'230181', N'230100', N'阿城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1037', N'230182', N'230100', N'双城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1038', N'230183', N'230100', N'尚志市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1039', N'230184', N'230100', N'五常市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1040', N'230201', N'230200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1041', N'230202', N'230200', N'龙沙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1042', N'230203', N'230200', N'建华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1043', N'230204', N'230200', N'铁锋区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1044', N'230205', N'230200', N'昂昂溪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1045', N'230206', N'230200', N'富拉尔基区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1046', N'230207', N'230200', N'碾子山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1047', N'230208', N'230200', N'梅里斯达斡尔族区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1048', N'230221', N'230200', N'龙江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1049', N'230223', N'230200', N'依安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1050', N'230224', N'230200', N'泰来县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1051', N'230225', N'230200', N'甘南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1052', N'230227', N'230200', N'富裕县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1053', N'230229', N'230200', N'克山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1054', N'230230', N'230200', N'克东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1055', N'230231', N'230200', N'拜泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1056', N'230281', N'230200', N'讷河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1057', N'230301', N'230300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1058', N'230302', N'230300', N'鸡冠区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1059', N'230303', N'230300', N'恒山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1060', N'230304', N'230300', N'滴道区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1061', N'230305', N'230300', N'梨树区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1062', N'230306', N'230300', N'城子河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1063', N'230307', N'230300', N'麻山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1064', N'230321', N'230300', N'鸡东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1065', N'230381', N'230300', N'虎林市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1066', N'230382', N'230300', N'密山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1067', N'230401', N'230400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1068', N'230402', N'230400', N'向阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1069', N'230403', N'230400', N'工农区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1070', N'230404', N'230400', N'南山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1071', N'230405', N'230400', N'兴安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1072', N'230406', N'230400', N'东山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1073', N'230407', N'230400', N'兴山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1074', N'230421', N'230400', N'萝北县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1075', N'230422', N'230400', N'绥滨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1076', N'230501', N'230500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1077', N'230502', N'230500', N'尖山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1078', N'230503', N'230500', N'岭东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1079', N'230505', N'230500', N'四方台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1080', N'230506', N'230500', N'宝山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1081', N'230521', N'230500', N'集贤县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1082', N'230522', N'230500', N'友谊县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1083', N'230523', N'230500', N'宝清县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1084', N'230524', N'230500', N'饶河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1085', N'230601', N'230600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1086', N'230602', N'230600', N'萨尔图区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1087', N'230603', N'230600', N'龙凤区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1088', N'230604', N'230600', N'让胡路区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1089', N'230605', N'230600', N'红岗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1090', N'230606', N'230600', N'大同区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1091', N'230621', N'230600', N'肇州县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1092', N'230622', N'230600', N'肇源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1093', N'230623', N'230600', N'林甸县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1094', N'230624', N'230600', N'杜尔伯特蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1095', N'230701', N'230700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1096', N'230702', N'230700', N'伊春区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1097', N'230703', N'230700', N'南岔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1098', N'230704', N'230700', N'友好区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1099', N'230705', N'230700', N'西林区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1100', N'230706', N'230700', N'翠峦区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1101', N'230707', N'230700', N'新青区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1102', N'230708', N'230700', N'美溪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1103', N'230709', N'230700', N'金山屯区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1104', N'230710', N'230700', N'五营区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1105', N'230711', N'230700', N'乌马河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1106', N'230712', N'230700', N'汤旺河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1107', N'230713', N'230700', N'带岭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1108', N'230714', N'230700', N'乌伊岭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1109', N'230715', N'230700', N'红星区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1110', N'230716', N'230700', N'上甘岭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1111', N'230722', N'230700', N'嘉荫县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1112', N'230781', N'230700', N'铁力市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1113', N'230801', N'230800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1114', N'230802', N'230800', N'永红区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1115', N'230803', N'230800', N'向阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1116', N'230804', N'230800', N'前进区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1117', N'230805', N'230800', N'东风区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1118', N'230811', N'230800', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1119', N'230822', N'230800', N'桦南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1120', N'230826', N'230800', N'桦川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1121', N'230828', N'230800', N'汤原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1122', N'230833', N'230800', N'抚远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1123', N'230881', N'230800', N'同江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1124', N'230882', N'230800', N'富锦市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1125', N'230901', N'230900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1126', N'230902', N'230900', N'新兴区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1127', N'230903', N'230900', N'桃山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1128', N'230904', N'230900', N'茄子河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1129', N'230921', N'230900', N'勃利县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1130', N'231001', N'231000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1131', N'231002', N'231000', N'东安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1132', N'231003', N'231000', N'阳明区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1133', N'231004', N'231000', N'爱民区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1134', N'231005', N'231000', N'西安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1135', N'231024', N'231000', N'东宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1136', N'231025', N'231000', N'林口县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1137', N'231081', N'231000', N'绥芬河市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1138', N'231083', N'231000', N'海林市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1139', N'231084', N'231000', N'宁安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1140', N'231085', N'231000', N'穆棱市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1141', N'231101', N'231100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1142', N'231102', N'231100', N'爱辉区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1143', N'231121', N'231100', N'嫩江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1144', N'231123', N'231100', N'逊克县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1145', N'231124', N'231100', N'孙吴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1146', N'231181', N'231100', N'北安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1147', N'231182', N'231100', N'五大连池市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1148', N'231201', N'231200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1149', N'231202', N'231200', N'北林区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1150', N'231221', N'231200', N'望奎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1151', N'231222', N'231200', N'兰西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1152', N'231223', N'231200', N'青冈县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1153', N'231224', N'231200', N'庆安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1154', N'231225', N'231200', N'明水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1155', N'231226', N'231200', N'绥棱县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1156', N'231281', N'231200', N'安达市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1157', N'231282', N'231200', N'肇东市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1158', N'231283', N'231200', N'海伦市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1159', N'232721', N'232700', N'呼玛县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1160', N'232722', N'232700', N'塔河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1161', N'232723', N'232700', N'漠河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1162', N'310101', N'310100', N'黄浦区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1163', N'310103', N'310100', N'卢湾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1164', N'310104', N'310100', N'徐汇区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1165', N'310105', N'310100', N'长宁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1166', N'310106', N'310100', N'静安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1167', N'310107', N'310100', N'普陀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1168', N'310108', N'310100', N'闸北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1169', N'310109', N'310100', N'虹口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1170', N'310110', N'310100', N'杨浦区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1171', N'310112', N'310100', N'闵行区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1172', N'310113', N'310100', N'宝山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1173', N'310114', N'310100', N'嘉定区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1174', N'310115', N'310100', N'浦东新区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1175', N'310116', N'310100', N'金山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1176', N'310117', N'310100', N'松江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1177', N'310118', N'310100', N'青浦区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1178', N'310119', N'310100', N'南汇区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1179', N'310120', N'310100', N'奉贤区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1180', N'310230', N'310100', N'崇明县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1181', N'320101', N'320100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1182', N'320102', N'320100', N'玄武区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1183', N'320103', N'320100', N'白下区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1184', N'320104', N'320100', N'秦淮区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1185', N'320105', N'320100', N'建邺区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1186', N'320106', N'320100', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1187', N'320107', N'320100', N'下关区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1188', N'320111', N'320100', N'浦口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1189', N'320113', N'320100', N'栖霞区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1190', N'320114', N'320100', N'雨花台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1191', N'320115', N'320100', N'江宁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1192', N'320116', N'320100', N'六合区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1193', N'320124', N'320100', N'溧水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1194', N'320125', N'320100', N'高淳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1195', N'320201', N'320200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1196', N'320202', N'320200', N'崇安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1197', N'320203', N'320200', N'南长区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1198', N'320204', N'320200', N'北塘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1199', N'320205', N'320200', N'锡山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1200', N'320206', N'320200', N'惠山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1201', N'320211', N'320200', N'滨湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1202', N'320281', N'320200', N'江阴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1203', N'320282', N'320200', N'宜兴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1204', N'320301', N'320300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1205', N'320302', N'320300', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1206', N'320303', N'320300', N'云龙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1207', N'320304', N'320300', N'九里区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1208', N'320305', N'320300', N'贾汪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1209', N'320311', N'320300', N'泉山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1210', N'320321', N'320300', N'丰　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1211', N'320322', N'320300', N'沛　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1212', N'320323', N'320300', N'铜山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1213', N'320324', N'320300', N'睢宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1214', N'320381', N'320300', N'新沂市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1215', N'320382', N'320300', N'邳州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1216', N'320401', N'320400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1217', N'320402', N'320400', N'天宁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1218', N'320404', N'320400', N'钟楼区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1219', N'320405', N'320400', N'戚墅堰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1220', N'320411', N'320400', N'新北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1221', N'320412', N'320400', N'武进区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1222', N'320481', N'320400', N'溧阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1223', N'320482', N'320400', N'金坛市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1224', N'320501', N'320500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1225', N'320502', N'320500', N'沧浪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1226', N'320503', N'320500', N'平江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1227', N'320504', N'320500', N'金阊区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1228', N'320505', N'320500', N'虎丘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1229', N'320506', N'320500', N'吴中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1230', N'320507', N'320500', N'相城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1231', N'320581', N'320500', N'常熟市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1232', N'320582', N'320500', N'张家港市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1233', N'320583', N'320500', N'昆山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1234', N'320584', N'320500', N'吴江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1235', N'320585', N'320500', N'太仓市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1236', N'320601', N'320600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1237', N'320602', N'320600', N'崇川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1238', N'320611', N'320600', N'港闸区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1239', N'320621', N'320600', N'海安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1240', N'320623', N'320600', N'如东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1241', N'320681', N'320600', N'启东市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1242', N'320682', N'320600', N'如皋市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1243', N'320683', N'320600', N'通州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1244', N'320684', N'320600', N'海门市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1245', N'320701', N'320700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1246', N'320703', N'320700', N'连云区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1247', N'320705', N'320700', N'新浦区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1248', N'320706', N'320700', N'海州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1249', N'320721', N'320700', N'赣榆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1250', N'320722', N'320700', N'东海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1251', N'320723', N'320700', N'灌云县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1252', N'320724', N'320700', N'灌南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1253', N'320801', N'320800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1254', N'320802', N'320800', N'清河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1255', N'320803', N'320800', N'楚州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1256', N'320804', N'320800', N'淮阴区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1257', N'320811', N'320800', N'清浦区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1258', N'320826', N'320800', N'涟水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1259', N'320829', N'320800', N'洪泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1260', N'320830', N'320800', N'盱眙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1261', N'320831', N'320800', N'金湖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1262', N'320901', N'320900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1263', N'320902', N'320900', N'亭湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1264', N'320903', N'320900', N'盐都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1265', N'320921', N'320900', N'响水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1266', N'320922', N'320900', N'滨海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1267', N'320923', N'320900', N'阜宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1268', N'320924', N'320900', N'射阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1269', N'320925', N'320900', N'建湖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1270', N'320981', N'320900', N'东台市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1271', N'320982', N'320900', N'大丰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1272', N'321001', N'321000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1273', N'321002', N'321000', N'广陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1274', N'321003', N'321000', N'邗江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1275', N'321011', N'321000', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1276', N'321023', N'321000', N'宝应县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1277', N'321081', N'321000', N'仪征市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1278', N'321084', N'321000', N'高邮市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1279', N'321088', N'321000', N'江都市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1280', N'321101', N'321100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1281', N'321102', N'321100', N'京口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1282', N'321111', N'321100', N'润州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1283', N'321112', N'321100', N'丹徒区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1284', N'321181', N'321100', N'丹阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1285', N'321182', N'321100', N'扬中市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1286', N'321183', N'321100', N'句容市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1287', N'321201', N'321200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1288', N'321202', N'321200', N'海陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1289', N'321203', N'321200', N'高港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1290', N'321281', N'321200', N'兴化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1291', N'321282', N'321200', N'靖江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1292', N'321283', N'321200', N'泰兴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1293', N'321284', N'321200', N'姜堰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1294', N'321301', N'321300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1295', N'321302', N'321300', N'宿城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1296', N'321311', N'321300', N'宿豫区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1297', N'321322', N'321300', N'沭阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1298', N'321323', N'321300', N'泗阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1299', N'321324', N'321300', N'泗洪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1300', N'330101', N'330100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1301', N'330102', N'330100', N'上城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1302', N'330103', N'330100', N'下城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1303', N'330104', N'330100', N'江干区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1304', N'330105', N'330100', N'拱墅区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1305', N'330106', N'330100', N'西湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1306', N'330108', N'330100', N'滨江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1307', N'330109', N'330100', N'萧山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1308', N'330110', N'330100', N'余杭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1309', N'330122', N'330100', N'桐庐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1310', N'330127', N'330100', N'淳安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1311', N'330182', N'330100', N'建德市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1312', N'330183', N'330100', N'富阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1313', N'330185', N'330100', N'临安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1314', N'330201', N'330200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1315', N'330203', N'330200', N'海曙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1316', N'330204', N'330200', N'江东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1317', N'330205', N'330200', N'江北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1318', N'330206', N'330200', N'北仑区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1319', N'330211', N'330200', N'镇海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1320', N'330212', N'330200', N'鄞州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1321', N'330225', N'330200', N'象山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1322', N'330226', N'330200', N'宁海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1323', N'330281', N'330200', N'余姚市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1324', N'330282', N'330200', N'慈溪市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1325', N'330283', N'330200', N'奉化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1326', N'330301', N'330300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1327', N'330302', N'330300', N'鹿城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1328', N'330303', N'330300', N'龙湾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1329', N'330304', N'330300', N'瓯海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1330', N'330322', N'330300', N'洞头县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1331', N'330324', N'330300', N'永嘉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1332', N'330326', N'330300', N'平阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1333', N'330327', N'330300', N'苍南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1334', N'330328', N'330300', N'文成县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1335', N'330329', N'330300', N'泰顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1336', N'330381', N'330300', N'瑞安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1337', N'330382', N'330300', N'乐清市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1338', N'330401', N'330400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1339', N'330402', N'330400', N'秀城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1340', N'330411', N'330400', N'秀洲区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1341', N'330421', N'330400', N'嘉善县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1342', N'330424', N'330400', N'海盐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1343', N'330481', N'330400', N'海宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1344', N'330482', N'330400', N'平湖市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1345', N'330483', N'330400', N'桐乡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1346', N'330501', N'330500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1347', N'330502', N'330500', N'吴兴区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1348', N'330503', N'330500', N'南浔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1349', N'330521', N'330500', N'德清县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1350', N'330522', N'330500', N'长兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1351', N'330523', N'330500', N'安吉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1352', N'330601', N'330600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1353', N'330602', N'330600', N'越城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1354', N'330621', N'330600', N'绍兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1355', N'330624', N'330600', N'新昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1356', N'330681', N'330600', N'诸暨市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1357', N'330682', N'330600', N'上虞市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1358', N'330683', N'330600', N'嵊州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1359', N'330701', N'330700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1360', N'330702', N'330700', N'婺城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1361', N'330703', N'330700', N'金东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1362', N'330723', N'330700', N'武义县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1363', N'330726', N'330700', N'浦江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1364', N'330727', N'330700', N'磐安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1365', N'330781', N'330700', N'兰溪市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1366', N'330782', N'330700', N'义乌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1367', N'330783', N'330700', N'东阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1368', N'330784', N'330700', N'永康市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1369', N'330801', N'330800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1370', N'330802', N'330800', N'柯城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1371', N'330803', N'330800', N'衢江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1372', N'330822', N'330800', N'常山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1373', N'330824', N'330800', N'开化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1374', N'330825', N'330800', N'龙游县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1375', N'330881', N'330800', N'江山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1376', N'330901', N'330900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1377', N'330902', N'330900', N'定海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1378', N'330903', N'330900', N'普陀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1379', N'330921', N'330900', N'岱山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1380', N'330922', N'330900', N'嵊泗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1381', N'331001', N'331000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1382', N'331002', N'331000', N'椒江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1383', N'331003', N'331000', N'黄岩区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1384', N'331004', N'331000', N'路桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1385', N'331021', N'331000', N'玉环县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1386', N'331022', N'331000', N'三门县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1387', N'331023', N'331000', N'天台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1388', N'331024', N'331000', N'仙居县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1389', N'331081', N'331000', N'温岭市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1390', N'331082', N'331000', N'临海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1391', N'331101', N'331100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1392', N'331102', N'331100', N'莲都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1393', N'331121', N'331100', N'青田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1394', N'331122', N'331100', N'缙云县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1395', N'331123', N'331100', N'遂昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1396', N'331124', N'331100', N'松阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1397', N'331125', N'331100', N'云和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1398', N'331126', N'331100', N'庆元县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1399', N'331127', N'331100', N'景宁畲族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1400', N'331181', N'331100', N'龙泉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1401', N'340101', N'340100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1402', N'340102', N'340100', N'瑶海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1403', N'340103', N'340100', N'庐阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1404', N'340104', N'340100', N'蜀山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1405', N'340111', N'340100', N'包河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1406', N'340121', N'340100', N'长丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1407', N'340122', N'340100', N'肥东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1408', N'340123', N'340100', N'肥西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1409', N'340201', N'340200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1410', N'340202', N'340200', N'镜湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1411', N'340203', N'340200', N'马塘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1412', N'340204', N'340200', N'新芜区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1413', N'340207', N'340200', N'鸠江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1414', N'340221', N'340200', N'芜湖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1415', N'340222', N'340200', N'繁昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1416', N'340223', N'340200', N'南陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1417', N'340301', N'340300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1418', N'340302', N'340300', N'龙子湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1419', N'340303', N'340300', N'蚌山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1420', N'340304', N'340300', N'禹会区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1421', N'340311', N'340300', N'淮上区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1422', N'340321', N'340300', N'怀远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1423', N'340322', N'340300', N'五河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1424', N'340323', N'340300', N'固镇县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1425', N'340401', N'340400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1426', N'340402', N'340400', N'大通区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1427', N'340403', N'340400', N'田家庵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1428', N'340404', N'340400', N'谢家集区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1429', N'340405', N'340400', N'八公山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1430', N'340406', N'340400', N'潘集区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1431', N'340421', N'340400', N'凤台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1432', N'340501', N'340500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1433', N'340502', N'340500', N'金家庄区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1434', N'340503', N'340500', N'花山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1435', N'340504', N'340500', N'雨山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1436', N'340521', N'340500', N'当涂县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1437', N'340601', N'340600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1438', N'340602', N'340600', N'杜集区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1439', N'340603', N'340600', N'相山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1440', N'340604', N'340600', N'烈山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1441', N'340621', N'340600', N'濉溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1442', N'340701', N'340700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1443', N'340702', N'340700', N'铜官山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1444', N'340703', N'340700', N'狮子山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1445', N'340711', N'340700', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1446', N'340721', N'340700', N'铜陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1447', N'340801', N'340800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1448', N'340802', N'340800', N'迎江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1449', N'340803', N'340800', N'大观区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1450', N'340811', N'340800', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1451', N'340822', N'340800', N'怀宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1452', N'340823', N'340800', N'枞阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1453', N'340824', N'340800', N'潜山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1454', N'340825', N'340800', N'太湖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1455', N'340826', N'340800', N'宿松县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1456', N'340827', N'340800', N'望江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1457', N'340828', N'340800', N'岳西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1458', N'340881', N'340800', N'桐城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1459', N'341001', N'341000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1460', N'341002', N'341000', N'屯溪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1461', N'341003', N'341000', N'黄山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1462', N'341004', N'341000', N'徽州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1463', N'341021', N'341000', N'歙　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1464', N'341022', N'341000', N'休宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1465', N'341023', N'341000', N'黟　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1466', N'341024', N'341000', N'祁门县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1467', N'341101', N'341100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1468', N'341102', N'341100', N'琅琊区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1469', N'341103', N'341100', N'南谯区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1470', N'341122', N'341100', N'来安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1471', N'341124', N'341100', N'全椒县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1472', N'341125', N'341100', N'定远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1473', N'341126', N'341100', N'凤阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1474', N'341181', N'341100', N'天长市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1475', N'341182', N'341100', N'明光市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1476', N'341201', N'341200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1477', N'341202', N'341200', N'颍州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1478', N'341203', N'341200', N'颍东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1479', N'341204', N'341200', N'颍泉区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1480', N'341221', N'341200', N'临泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1481', N'341222', N'341200', N'太和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1482', N'341225', N'341200', N'阜南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1483', N'341226', N'341200', N'颍上县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1484', N'341282', N'341200', N'界首市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1485', N'341301', N'341300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1486', N'341302', N'341300', N'墉桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1487', N'341321', N'341300', N'砀山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1488', N'341322', N'341300', N'萧　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1489', N'341323', N'341300', N'灵璧县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1490', N'341324', N'341300', N'泗　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1491', N'341401', N'341400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1492', N'341402', N'341400', N'居巢区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1493', N'341421', N'341400', N'庐江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1494', N'341422', N'341400', N'无为县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1495', N'341423', N'341400', N'含山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1496', N'341424', N'341400', N'和　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1497', N'341501', N'341500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1498', N'341502', N'341500', N'金安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1499', N'341503', N'341500', N'裕安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1500', N'341521', N'341500', N'寿　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1501', N'341522', N'341500', N'霍邱县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1502', N'341523', N'341500', N'舒城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1503', N'341524', N'341500', N'金寨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1504', N'341525', N'341500', N'霍山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1505', N'341601', N'341600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1506', N'341602', N'341600', N'谯城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1507', N'341621', N'341600', N'涡阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1508', N'341622', N'341600', N'蒙城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1509', N'341623', N'341600', N'利辛县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1510', N'341701', N'341700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1511', N'341702', N'341700', N'贵池区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1512', N'341721', N'341700', N'东至县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1513', N'341722', N'341700', N'石台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1514', N'341723', N'341700', N'青阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1515', N'341801', N'341800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1516', N'341802', N'341800', N'宣州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1517', N'341821', N'341800', N'郎溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1518', N'341822', N'341800', N'广德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1519', N'341823', N'341800', N'泾　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1520', N'341824', N'341800', N'绩溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1521', N'341825', N'341800', N'旌德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1522', N'341881', N'341800', N'宁国市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1523', N'350101', N'350100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1524', N'350102', N'350100', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1525', N'350103', N'350100', N'台江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1526', N'350104', N'350100', N'仓山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1527', N'350105', N'350100', N'马尾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1528', N'350111', N'350100', N'晋安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1529', N'350121', N'350100', N'闽侯县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1530', N'350122', N'350100', N'连江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1531', N'350123', N'350100', N'罗源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1532', N'350124', N'350100', N'闽清县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1533', N'350125', N'350100', N'永泰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1534', N'350128', N'350100', N'平潭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1535', N'350181', N'350100', N'福清市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1536', N'350182', N'350100', N'长乐市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1537', N'350201', N'350200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1538', N'350203', N'350200', N'思明区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1539', N'350205', N'350200', N'海沧区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1540', N'350206', N'350200', N'湖里区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1541', N'350211', N'350200', N'集美区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1542', N'350212', N'350200', N'同安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1543', N'350213', N'350200', N'翔安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1544', N'350301', N'350300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1545', N'350302', N'350300', N'城厢区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1546', N'350303', N'350300', N'涵江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1547', N'350304', N'350300', N'荔城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1548', N'350305', N'350300', N'秀屿区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1549', N'350322', N'350300', N'仙游县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1550', N'350401', N'350400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1551', N'350402', N'350400', N'梅列区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1552', N'350403', N'350400', N'三元区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1553', N'350421', N'350400', N'明溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1554', N'350423', N'350400', N'清流县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1555', N'350424', N'350400', N'宁化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1556', N'350425', N'350400', N'大田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1557', N'350426', N'350400', N'尤溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1558', N'350427', N'350400', N'沙　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1559', N'350428', N'350400', N'将乐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1560', N'350429', N'350400', N'泰宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1561', N'350430', N'350400', N'建宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1562', N'350481', N'350400', N'永安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1563', N'350501', N'350500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1564', N'350502', N'350500', N'鲤城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1565', N'350503', N'350500', N'丰泽区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1566', N'350504', N'350500', N'洛江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1567', N'350505', N'350500', N'泉港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1568', N'350521', N'350500', N'惠安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1569', N'350524', N'350500', N'安溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1570', N'350525', N'350500', N'永春县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1571', N'350526', N'350500', N'德化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1572', N'350527', N'350500', N'金门县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1573', N'350581', N'350500', N'石狮市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1574', N'350582', N'350500', N'晋江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1575', N'350583', N'350500', N'南安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1576', N'350601', N'350600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1577', N'350602', N'350600', N'芗城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1578', N'350603', N'350600', N'龙文区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1579', N'350622', N'350600', N'云霄县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1580', N'350623', N'350600', N'漳浦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1581', N'350624', N'350600', N'诏安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1582', N'350625', N'350600', N'长泰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1583', N'350626', N'350600', N'东山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1584', N'350627', N'350600', N'南靖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1585', N'350628', N'350600', N'平和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1586', N'350629', N'350600', N'华安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1587', N'350681', N'350600', N'龙海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1588', N'350701', N'350700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1589', N'350702', N'350700', N'延平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1590', N'350721', N'350700', N'顺昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1591', N'350722', N'350700', N'浦城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1592', N'350723', N'350700', N'光泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1593', N'350724', N'350700', N'松溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1594', N'350725', N'350700', N'政和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1595', N'350781', N'350700', N'邵武市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1596', N'350782', N'350700', N'武夷山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1597', N'350783', N'350700', N'建瓯市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1598', N'350784', N'350700', N'建阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1599', N'350801', N'350800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1600', N'350802', N'350800', N'新罗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1601', N'350821', N'350800', N'长汀县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1602', N'350822', N'350800', N'永定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1603', N'350823', N'350800', N'上杭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1604', N'350824', N'350800', N'武平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1605', N'350825', N'350800', N'连城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1606', N'350881', N'350800', N'漳平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1607', N'350901', N'350900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1608', N'350902', N'350900', N'蕉城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1609', N'350921', N'350900', N'霞浦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1610', N'350922', N'350900', N'古田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1611', N'350923', N'350900', N'屏南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1612', N'350924', N'350900', N'寿宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1613', N'350925', N'350900', N'周宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1614', N'350926', N'350900', N'柘荣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1615', N'350981', N'350900', N'福安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1616', N'350982', N'350900', N'福鼎市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1617', N'360101', N'360100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1618', N'360102', N'360100', N'东湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1619', N'360103', N'360100', N'西湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1620', N'360104', N'360100', N'青云谱区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1621', N'360105', N'360100', N'湾里区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1622', N'360111', N'360100', N'青山湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1623', N'360121', N'360100', N'南昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1624', N'360122', N'360100', N'新建县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1625', N'360123', N'360100', N'安义县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1626', N'360124', N'360100', N'进贤县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1627', N'360201', N'360200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1628', N'360202', N'360200', N'昌江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1629', N'360203', N'360200', N'珠山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1630', N'360222', N'360200', N'浮梁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1631', N'360281', N'360200', N'乐平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1632', N'360301', N'360300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1633', N'360302', N'360300', N'安源区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1634', N'360313', N'360300', N'湘东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1635', N'360321', N'360300', N'莲花县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1636', N'360322', N'360300', N'上栗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1637', N'360323', N'360300', N'芦溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1638', N'360401', N'360400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1639', N'360402', N'360400', N'庐山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1640', N'360403', N'360400', N'浔阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1641', N'360421', N'360400', N'九江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1642', N'360423', N'360400', N'武宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1643', N'360424', N'360400', N'修水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1644', N'360425', N'360400', N'永修县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1645', N'360426', N'360400', N'德安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1646', N'360427', N'360400', N'星子县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1647', N'360428', N'360400', N'都昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1648', N'360429', N'360400', N'湖口县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1649', N'360430', N'360400', N'彭泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1650', N'360481', N'360400', N'瑞昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1651', N'360501', N'360500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1652', N'360502', N'360500', N'渝水区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1653', N'360521', N'360500', N'分宜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1654', N'360601', N'360600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1655', N'360602', N'360600', N'月湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1656', N'360622', N'360600', N'余江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1657', N'360681', N'360600', N'贵溪市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1658', N'360701', N'360700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1659', N'360702', N'360700', N'章贡区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1660', N'360721', N'360700', N'赣　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1661', N'360722', N'360700', N'信丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1662', N'360723', N'360700', N'大余县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1663', N'360724', N'360700', N'上犹县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1664', N'360725', N'360700', N'崇义县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1665', N'360726', N'360700', N'安远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1666', N'360727', N'360700', N'龙南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1667', N'360728', N'360700', N'定南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1668', N'360729', N'360700', N'全南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1669', N'360730', N'360700', N'宁都县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1670', N'360731', N'360700', N'于都县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1671', N'360732', N'360700', N'兴国县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1672', N'360733', N'360700', N'会昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1673', N'360734', N'360700', N'寻乌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1674', N'360735', N'360700', N'石城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1675', N'360781', N'360700', N'瑞金市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1676', N'360782', N'360700', N'南康市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1677', N'360801', N'360800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1678', N'360802', N'360800', N'吉州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1679', N'360803', N'360800', N'青原区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1680', N'360821', N'360800', N'吉安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1681', N'360822', N'360800', N'吉水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1682', N'360823', N'360800', N'峡江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1683', N'360824', N'360800', N'新干县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1684', N'360825', N'360800', N'永丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1685', N'360826', N'360800', N'泰和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1686', N'360827', N'360800', N'遂川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1687', N'360828', N'360800', N'万安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1688', N'360829', N'360800', N'安福县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1689', N'360830', N'360800', N'永新县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1690', N'360881', N'360800', N'井冈山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1691', N'360901', N'360900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1692', N'360902', N'360900', N'袁州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1693', N'360921', N'360900', N'奉新县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1694', N'360922', N'360900', N'万载县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1695', N'360923', N'360900', N'上高县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1696', N'360924', N'360900', N'宜丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1697', N'360925', N'360900', N'靖安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1698', N'360926', N'360900', N'铜鼓县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1699', N'360981', N'360900', N'丰城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1700', N'360982', N'360900', N'樟树市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1701', N'360983', N'360900', N'高安市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1702', N'361001', N'361000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1703', N'361002', N'361000', N'临川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1704', N'361021', N'361000', N'南城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1705', N'361022', N'361000', N'黎川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1706', N'361023', N'361000', N'南丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1707', N'361024', N'361000', N'崇仁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1708', N'361025', N'361000', N'乐安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1709', N'361026', N'361000', N'宜黄县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1710', N'361027', N'361000', N'金溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1711', N'361028', N'361000', N'资溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1712', N'361029', N'361000', N'东乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1713', N'361030', N'361000', N'广昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1714', N'361101', N'361100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1715', N'361102', N'361100', N'信州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1716', N'361121', N'361100', N'上饶县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1717', N'361122', N'361100', N'广丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1718', N'361123', N'361100', N'玉山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1719', N'361124', N'361100', N'铅山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1720', N'361125', N'361100', N'横峰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1721', N'361126', N'361100', N'弋阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1722', N'361127', N'361100', N'余干县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1723', N'361128', N'361100', N'鄱阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1724', N'361129', N'361100', N'万年县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1725', N'361130', N'361100', N'婺源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1726', N'361181', N'361100', N'德兴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1727', N'370101', N'370100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1728', N'370102', N'370100', N'历下区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1729', N'370103', N'370100', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1730', N'370104', N'370100', N'槐荫区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1731', N'370105', N'370100', N'天桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1732', N'370112', N'370100', N'历城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1733', N'370113', N'370100', N'长清区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1734', N'370124', N'370100', N'平阴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1735', N'370125', N'370100', N'济阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1736', N'370126', N'370100', N'商河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1737', N'370181', N'370100', N'章丘市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1738', N'370201', N'370200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1739', N'370202', N'370200', N'市南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1740', N'370203', N'370200', N'市北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1741', N'370205', N'370200', N'四方区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1742', N'370211', N'370200', N'黄岛区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1743', N'370212', N'370200', N'崂山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1744', N'370213', N'370200', N'李沧区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1745', N'370214', N'370200', N'城阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1746', N'370281', N'370200', N'胶州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1747', N'370282', N'370200', N'即墨市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1748', N'370283', N'370200', N'平度市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1749', N'370284', N'370200', N'胶南市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1750', N'370285', N'370200', N'莱西市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1751', N'370301', N'370300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1752', N'370302', N'370300', N'淄川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1753', N'370303', N'370300', N'张店区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1754', N'370304', N'370300', N'博山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1755', N'370305', N'370300', N'临淄区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1756', N'370306', N'370300', N'周村区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1757', N'370321', N'370300', N'桓台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1758', N'370322', N'370300', N'高青县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1759', N'370323', N'370300', N'沂源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1760', N'370401', N'370400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1761', N'370402', N'370400', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1762', N'370403', N'370400', N'薛城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1763', N'370404', N'370400', N'峄城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1764', N'370405', N'370400', N'台儿庄区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1765', N'370406', N'370400', N'山亭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1766', N'370481', N'370400', N'滕州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1767', N'370501', N'370500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1768', N'370502', N'370500', N'东营区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1769', N'370503', N'370500', N'河口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1770', N'370521', N'370500', N'垦利县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1771', N'370522', N'370500', N'利津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1772', N'370523', N'370500', N'广饶县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1773', N'370601', N'370600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1774', N'370602', N'370600', N'芝罘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1775', N'370611', N'370600', N'福山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1776', N'370612', N'370600', N'牟平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1777', N'370613', N'370600', N'莱山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1778', N'370634', N'370600', N'长岛县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1779', N'370681', N'370600', N'龙口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1780', N'370682', N'370600', N'莱阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1781', N'370683', N'370600', N'莱州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1782', N'370684', N'370600', N'蓬莱市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1783', N'370685', N'370600', N'招远市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1784', N'370686', N'370600', N'栖霞市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1785', N'370687', N'370600', N'海阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1786', N'370701', N'370700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1787', N'370702', N'370700', N'潍城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1788', N'370703', N'370700', N'寒亭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1789', N'370704', N'370700', N'坊子区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1790', N'370705', N'370700', N'奎文区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1791', N'370724', N'370700', N'临朐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1792', N'370725', N'370700', N'昌乐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1793', N'370781', N'370700', N'青州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1794', N'370782', N'370700', N'诸城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1795', N'370783', N'370700', N'寿光市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1796', N'370784', N'370700', N'安丘市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1797', N'370785', N'370700', N'高密市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1798', N'370786', N'370700', N'昌邑市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1799', N'370801', N'370800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1800', N'370802', N'370800', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1801', N'370811', N'370800', N'任城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1802', N'370826', N'370800', N'微山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1803', N'370827', N'370800', N'鱼台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1804', N'370828', N'370800', N'金乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1805', N'370829', N'370800', N'嘉祥县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1806', N'370830', N'370800', N'汶上县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1807', N'370831', N'370800', N'泗水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1808', N'370832', N'370800', N'梁山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1809', N'370881', N'370800', N'曲阜市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1810', N'370882', N'370800', N'兖州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1811', N'370883', N'370800', N'邹城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1812', N'370901', N'370900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1813', N'370902', N'370900', N'泰山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1814', N'370903', N'370900', N'岱岳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1815', N'370921', N'370900', N'宁阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1816', N'370923', N'370900', N'东平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1817', N'370982', N'370900', N'新泰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1818', N'370983', N'370900', N'肥城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1819', N'371001', N'371000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1820', N'371002', N'371000', N'环翠区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1821', N'371081', N'371000', N'文登市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1822', N'371082', N'371000', N'荣成市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1823', N'371083', N'371000', N'乳山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1824', N'371101', N'371100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1825', N'371102', N'371100', N'东港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1826', N'371103', N'371100', N'岚山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1827', N'371121', N'371100', N'五莲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1828', N'371122', N'371100', N'莒　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1829', N'371201', N'371200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1830', N'371202', N'371200', N'莱城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1831', N'371203', N'371200', N'钢城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1832', N'371301', N'371300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1833', N'371302', N'371300', N'兰山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1834', N'371311', N'371300', N'罗庄区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1835', N'371312', N'371300', N'河东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1836', N'371321', N'371300', N'沂南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1837', N'371322', N'371300', N'郯城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1838', N'371323', N'371300', N'沂水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1839', N'371324', N'371300', N'苍山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1840', N'371325', N'371300', N'费　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1841', N'371326', N'371300', N'平邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1842', N'371327', N'371300', N'莒南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1843', N'371328', N'371300', N'蒙阴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1844', N'371329', N'371300', N'临沭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1845', N'371401', N'371400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1846', N'371402', N'371400', N'德城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1847', N'371421', N'371400', N'陵　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1848', N'371422', N'371400', N'宁津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1849', N'371423', N'371400', N'庆云县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1850', N'371424', N'371400', N'临邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1851', N'371425', N'371400', N'齐河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1852', N'371426', N'371400', N'平原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1853', N'371427', N'371400', N'夏津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1854', N'371428', N'371400', N'武城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1855', N'371481', N'371400', N'乐陵市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1856', N'371482', N'371400', N'禹城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1857', N'371501', N'371500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1858', N'371502', N'371500', N'东昌府区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1859', N'371521', N'371500', N'阳谷县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1860', N'371522', N'371500', N'莘　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1861', N'371523', N'371500', N'茌平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1862', N'371524', N'371500', N'东阿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1863', N'371525', N'371500', N'冠　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1864', N'371526', N'371500', N'高唐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1865', N'371581', N'371500', N'临清市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1866', N'371601', N'371600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1867', N'371602', N'371600', N'滨城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1868', N'371621', N'371600', N'惠民县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1869', N'371622', N'371600', N'阳信县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1870', N'371623', N'371600', N'无棣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1871', N'371624', N'371600', N'沾化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1872', N'371625', N'371600', N'博兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1873', N'371626', N'371600', N'邹平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1874', N'371701', N'371700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1875', N'371702', N'371700', N'牡丹区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1876', N'371721', N'371700', N'曹　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1877', N'371722', N'371700', N'单　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1878', N'371723', N'371700', N'成武县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1879', N'371724', N'371700', N'巨野县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1880', N'371725', N'371700', N'郓城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1881', N'371726', N'371700', N'鄄城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1882', N'371727', N'371700', N'定陶县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1883', N'371728', N'371700', N'东明县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1884', N'410101', N'410100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1885', N'410102', N'410100', N'中原区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1886', N'410103', N'410100', N'二七区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1887', N'410104', N'410100', N'管城回族区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1888', N'410105', N'410100', N'金水区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1889', N'410106', N'410100', N'上街区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1890', N'410108', N'410100', N'邙山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1891', N'410122', N'410100', N'中牟县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1892', N'410181', N'410100', N'巩义市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1893', N'410182', N'410100', N'荥阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1894', N'410183', N'410100', N'新密市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1895', N'410184', N'410100', N'新郑市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1896', N'410185', N'410100', N'登封市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1897', N'410201', N'410200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1898', N'410202', N'410200', N'龙亭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1899', N'410203', N'410200', N'顺河回族区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1900', N'410204', N'410200', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1901', N'410205', N'410200', N'南关区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1902', N'410211', N'410200', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1903', N'410221', N'410200', N'杞　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1904', N'410222', N'410200', N'通许县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1905', N'410223', N'410200', N'尉氏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1906', N'410224', N'410200', N'开封县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1907', N'410225', N'410200', N'兰考县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1908', N'410301', N'410300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1909', N'410302', N'410300', N'老城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1910', N'410303', N'410300', N'西工区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1911', N'410304', N'410300', N'廛河回族区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1912', N'410305', N'410300', N'涧西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1913', N'410306', N'410300', N'吉利区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1914', N'410307', N'410300', N'洛龙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1915', N'410322', N'410300', N'孟津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1916', N'410323', N'410300', N'新安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1917', N'410324', N'410300', N'栾川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1918', N'410325', N'410300', N'嵩　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1919', N'410326', N'410300', N'汝阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1920', N'410327', N'410300', N'宜阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1921', N'410328', N'410300', N'洛宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1922', N'410329', N'410300', N'伊川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1923', N'410381', N'410300', N'偃师市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1924', N'410401', N'410400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1925', N'410402', N'410400', N'新华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1926', N'410403', N'410400', N'卫东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1927', N'410404', N'410400', N'石龙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1928', N'410411', N'410400', N'湛河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1929', N'410421', N'410400', N'宝丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1930', N'410422', N'410400', N'叶　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1931', N'410423', N'410400', N'鲁山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1932', N'410425', N'410400', N'郏　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1933', N'410481', N'410400', N'舞钢市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1934', N'410482', N'410400', N'汝州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1935', N'410501', N'410500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1936', N'410502', N'410500', N'文峰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1937', N'410503', N'410500', N'北关区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1938', N'410505', N'410500', N'殷都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1939', N'410506', N'410500', N'龙安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1940', N'410522', N'410500', N'安阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1941', N'410523', N'410500', N'汤阴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1942', N'410526', N'410500', N'滑　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1943', N'410527', N'410500', N'内黄县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1944', N'410581', N'410500', N'林州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1945', N'410601', N'410600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1946', N'410602', N'410600', N'鹤山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1947', N'410603', N'410600', N'山城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1948', N'410611', N'410600', N'淇滨区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1949', N'410621', N'410600', N'浚　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1950', N'410622', N'410600', N'淇　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1951', N'410701', N'410700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1952', N'410702', N'410700', N'红旗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1953', N'410703', N'410700', N'卫滨区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1954', N'410704', N'410700', N'凤泉区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1955', N'410711', N'410700', N'牧野区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1956', N'410721', N'410700', N'新乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1957', N'410724', N'410700', N'获嘉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1958', N'410725', N'410700', N'原阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1959', N'410726', N'410700', N'延津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1960', N'410727', N'410700', N'封丘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1961', N'410728', N'410700', N'长垣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1962', N'410781', N'410700', N'卫辉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1963', N'410782', N'410700', N'辉县市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1964', N'410801', N'410800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1965', N'410802', N'410800', N'解放区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1966', N'410803', N'410800', N'中站区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1967', N'410804', N'410800', N'马村区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1968', N'410811', N'410800', N'山阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1969', N'410821', N'410800', N'修武县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1970', N'410822', N'410800', N'博爱县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1971', N'410823', N'410800', N'武陟县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1972', N'410825', N'410800', N'温　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1973', N'410881', N'410800', N'济源市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1974', N'410882', N'410800', N'沁阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1975', N'410883', N'410800', N'孟州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1976', N'410901', N'410900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1977', N'410902', N'410900', N'华龙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1978', N'410922', N'410900', N'清丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1979', N'410923', N'410900', N'南乐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1980', N'410926', N'410900', N'范　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1981', N'410927', N'410900', N'台前县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1982', N'410928', N'410900', N'濮阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1983', N'411001', N'411000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1984', N'411002', N'411000', N'魏都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1985', N'411023', N'411000', N'许昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1986', N'411024', N'411000', N'鄢陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1987', N'411025', N'411000', N'襄城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1988', N'411081', N'411000', N'禹州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1989', N'411082', N'411000', N'长葛市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1990', N'411101', N'411100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1991', N'411102', N'411100', N'源汇区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1992', N'411103', N'411100', N'郾城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1993', N'411104', N'411100', N'召陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1994', N'411121', N'411100', N'舞阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1995', N'411122', N'411100', N'临颍县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1996', N'411201', N'411200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1997', N'411202', N'411200', N'湖滨区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1998', N'411221', N'411200', N'渑池县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1999', N'411222', N'411200', N'陕　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2000', N'411224', N'411200', N'卢氏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2001', N'411281', N'411200', N'义马市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2002', N'411282', N'411200', N'灵宝市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2003', N'411301', N'411300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2004', N'411302', N'411300', N'宛城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2005', N'411303', N'411300', N'卧龙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2006', N'411321', N'411300', N'南召县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2007', N'411322', N'411300', N'方城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2008', N'411323', N'411300', N'西峡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2009', N'411324', N'411300', N'镇平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2010', N'411325', N'411300', N'内乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2011', N'411326', N'411300', N'淅川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2012', N'411327', N'411300', N'社旗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2013', N'411328', N'411300', N'唐河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2014', N'411329', N'411300', N'新野县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2015', N'411330', N'411300', N'桐柏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2016', N'411381', N'411300', N'邓州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2017', N'411401', N'411400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2018', N'411402', N'411400', N'梁园区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2019', N'411403', N'411400', N'睢阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2020', N'411421', N'411400', N'民权县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2021', N'411422', N'411400', N'睢　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2022', N'411423', N'411400', N'宁陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2023', N'411424', N'411400', N'柘城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2024', N'411425', N'411400', N'虞城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2025', N'411426', N'411400', N'夏邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2026', N'411481', N'411400', N'永城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2027', N'411501', N'411500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2028', N'411502', N'411500', N'师河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2029', N'411503', N'411500', N'平桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2030', N'411521', N'411500', N'罗山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2031', N'411522', N'411500', N'光山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2032', N'411523', N'411500', N'新　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2033', N'411524', N'411500', N'商城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2034', N'411525', N'411500', N'固始县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2035', N'411526', N'411500', N'潢川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2036', N'411527', N'411500', N'淮滨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2037', N'411528', N'411500', N'息　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2038', N'411601', N'411600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2039', N'411602', N'411600', N'川汇区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2040', N'411621', N'411600', N'扶沟县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2041', N'411622', N'411600', N'西华县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2042', N'411623', N'411600', N'商水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2043', N'411624', N'411600', N'沈丘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2044', N'411625', N'411600', N'郸城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2045', N'411626', N'411600', N'淮阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2046', N'411627', N'411600', N'太康县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2047', N'411628', N'411600', N'鹿邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2048', N'411681', N'411600', N'项城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2049', N'411701', N'411700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2050', N'411702', N'411700', N'驿城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2051', N'411721', N'411700', N'西平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2052', N'411722', N'411700', N'上蔡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2053', N'411723', N'411700', N'平舆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2054', N'411724', N'411700', N'正阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2055', N'411725', N'411700', N'确山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2056', N'411726', N'411700', N'泌阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2057', N'411727', N'411700', N'汝南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2058', N'411728', N'411700', N'遂平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2059', N'411729', N'411700', N'新蔡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2060', N'420101', N'420100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2061', N'420102', N'420100', N'江岸区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2062', N'420103', N'420100', N'江汉区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2063', N'420104', N'420100', N'乔口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2064', N'420105', N'420100', N'汉阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2065', N'420106', N'420100', N'武昌区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2066', N'420107', N'420100', N'青山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2067', N'420111', N'420100', N'洪山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2068', N'420112', N'420100', N'东西湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2069', N'420113', N'420100', N'汉南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2070', N'420114', N'420100', N'蔡甸区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2071', N'420115', N'420100', N'江夏区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2072', N'420116', N'420100', N'黄陂区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2073', N'420117', N'420100', N'新洲区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2074', N'420201', N'420200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2075', N'420202', N'420200', N'黄石港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2076', N'420203', N'420200', N'西塞山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2077', N'420204', N'420200', N'下陆区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2078', N'420205', N'420200', N'铁山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2079', N'420222', N'420200', N'阳新县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2080', N'420281', N'420200', N'大冶市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2081', N'420301', N'420300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2082', N'420302', N'420300', N'茅箭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2083', N'420303', N'420300', N'张湾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2084', N'420321', N'420300', N'郧　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2085', N'420322', N'420300', N'郧西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2086', N'420323', N'420300', N'竹山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2087', N'420324', N'420300', N'竹溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2088', N'420325', N'420300', N'房　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2089', N'420381', N'420300', N'丹江口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2090', N'420501', N'420500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2091', N'420502', N'420500', N'西陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2092', N'420503', N'420500', N'伍家岗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2093', N'420504', N'420500', N'点军区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2094', N'420505', N'420500', N'猇亭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2095', N'420506', N'420500', N'夷陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2096', N'420525', N'420500', N'远安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2097', N'420526', N'420500', N'兴山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2098', N'420527', N'420500', N'秭归县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2099', N'420528', N'420500', N'长阳土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2100', N'420529', N'420500', N'五峰土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2101', N'420581', N'420500', N'宜都市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2102', N'420582', N'420500', N'当阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2103', N'420583', N'420500', N'枝江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2104', N'420601', N'420600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2105', N'420602', N'420600', N'襄城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2106', N'420606', N'420600', N'樊城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2107', N'420607', N'420600', N'襄阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2108', N'420624', N'420600', N'南漳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2109', N'420625', N'420600', N'谷城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2110', N'420626', N'420600', N'保康县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2111', N'420682', N'420600', N'老河口市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2112', N'420683', N'420600', N'枣阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2113', N'420684', N'420600', N'宜城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2114', N'420701', N'420700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2115', N'420702', N'420700', N'梁子湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2116', N'420703', N'420700', N'华容区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2117', N'420704', N'420700', N'鄂城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2118', N'420801', N'420800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2119', N'420802', N'420800', N'东宝区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2120', N'420804', N'420800', N'掇刀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2121', N'420821', N'420800', N'京山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2122', N'420822', N'420800', N'沙洋县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2123', N'420881', N'420800', N'钟祥市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2124', N'420901', N'420900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2125', N'420902', N'420900', N'孝南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2126', N'420921', N'420900', N'孝昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2127', N'420922', N'420900', N'大悟县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2128', N'420923', N'420900', N'云梦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2129', N'420981', N'420900', N'应城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2130', N'420982', N'420900', N'安陆市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2131', N'420984', N'420900', N'汉川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2132', N'421001', N'421000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2133', N'421002', N'421000', N'沙市区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2134', N'421003', N'421000', N'荆州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2135', N'421022', N'421000', N'公安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2136', N'421023', N'421000', N'监利县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2137', N'421024', N'421000', N'江陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2138', N'421081', N'421000', N'石首市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2139', N'421083', N'421000', N'洪湖市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2140', N'421087', N'421000', N'松滋市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2141', N'421101', N'421100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2142', N'421102', N'421100', N'黄州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2143', N'421121', N'421100', N'团风县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2144', N'421122', N'421100', N'红安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2145', N'421123', N'421100', N'罗田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2146', N'421124', N'421100', N'英山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2147', N'421125', N'421100', N'浠水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2148', N'421126', N'421100', N'蕲春县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2149', N'421127', N'421100', N'黄梅县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2150', N'421181', N'421100', N'麻城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2151', N'421182', N'421100', N'武穴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2152', N'421201', N'421200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2153', N'421202', N'421200', N'咸安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2154', N'421221', N'421200', N'嘉鱼县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2155', N'421222', N'421200', N'通城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2156', N'421223', N'421200', N'崇阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2157', N'421224', N'421200', N'通山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2158', N'421281', N'421200', N'赤壁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2159', N'421301', N'421300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2160', N'421302', N'421300', N'曾都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2161', N'421381', N'421300', N'广水市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2162', N'422801', N'422800', N'恩施市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2163', N'422802', N'422800', N'利川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2164', N'422822', N'422800', N'建始县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2165', N'422823', N'422800', N'巴东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2166', N'422825', N'422800', N'宣恩县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2167', N'422826', N'422800', N'咸丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2168', N'422827', N'422800', N'来凤县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2169', N'422828', N'422800', N'鹤峰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2170', N'429004', N'429000', N'仙桃市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2171', N'429005', N'429000', N'潜江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2172', N'429006', N'429000', N'天门市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2173', N'429021', N'429000', N'神农架林区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2174', N'430101', N'430100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2175', N'430102', N'430100', N'芙蓉区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2176', N'430103', N'430100', N'天心区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2177', N'430104', N'430100', N'岳麓区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2178', N'430105', N'430100', N'开福区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2179', N'430111', N'430100', N'雨花区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2180', N'430121', N'430100', N'长沙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2181', N'430122', N'430100', N'望城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2182', N'430124', N'430100', N'宁乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2183', N'430181', N'430100', N'浏阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2184', N'430201', N'430200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2185', N'430202', N'430200', N'荷塘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2186', N'430203', N'430200', N'芦淞区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2187', N'430204', N'430200', N'石峰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2188', N'430211', N'430200', N'天元区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2189', N'430221', N'430200', N'株洲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2190', N'430223', N'430200', N'攸　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2191', N'430224', N'430200', N'茶陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2192', N'430225', N'430200', N'炎陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2193', N'430281', N'430200', N'醴陵市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2194', N'430301', N'430300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2195', N'430302', N'430300', N'雨湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2196', N'430304', N'430300', N'岳塘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2197', N'430321', N'430300', N'湘潭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2198', N'430381', N'430300', N'湘乡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2199', N'430382', N'430300', N'韶山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2200', N'430401', N'430400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2201', N'430405', N'430400', N'珠晖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2202', N'430406', N'430400', N'雁峰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2203', N'430407', N'430400', N'石鼓区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2204', N'430408', N'430400', N'蒸湘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2205', N'430412', N'430400', N'南岳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2206', N'430421', N'430400', N'衡阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2207', N'430422', N'430400', N'衡南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2208', N'430423', N'430400', N'衡山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2209', N'430424', N'430400', N'衡东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2210', N'430426', N'430400', N'祁东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2211', N'430481', N'430400', N'耒阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2212', N'430482', N'430400', N'常宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2213', N'430501', N'430500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2214', N'430502', N'430500', N'双清区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2215', N'430503', N'430500', N'大祥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2216', N'430511', N'430500', N'北塔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2217', N'430521', N'430500', N'邵东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2218', N'430522', N'430500', N'新邵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2219', N'430523', N'430500', N'邵阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2220', N'430524', N'430500', N'隆回县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2221', N'430525', N'430500', N'洞口县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2222', N'430527', N'430500', N'绥宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2223', N'430528', N'430500', N'新宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2224', N'430529', N'430500', N'城步苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2225', N'430581', N'430500', N'武冈市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2226', N'430601', N'430600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2227', N'430602', N'430600', N'岳阳楼区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2228', N'430603', N'430600', N'云溪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2229', N'430611', N'430600', N'君山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2230', N'430621', N'430600', N'岳阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2231', N'430623', N'430600', N'华容县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2232', N'430624', N'430600', N'湘阴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2233', N'430626', N'430600', N'平江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2234', N'430681', N'430600', N'汨罗市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2235', N'430682', N'430600', N'临湘市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2236', N'430701', N'430700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2237', N'430702', N'430700', N'武陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2238', N'430703', N'430700', N'鼎城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2239', N'430721', N'430700', N'安乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2240', N'430722', N'430700', N'汉寿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2241', N'430723', N'430700', N'澧　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2242', N'430724', N'430700', N'临澧县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2243', N'430725', N'430700', N'桃源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2244', N'430726', N'430700', N'石门县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2245', N'430781', N'430700', N'津市市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2246', N'430801', N'430800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2247', N'430802', N'430800', N'永定区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2248', N'430811', N'430800', N'武陵源区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2249', N'430821', N'430800', N'慈利县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2250', N'430822', N'430800', N'桑植县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2251', N'430901', N'430900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2252', N'430902', N'430900', N'资阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2253', N'430903', N'430900', N'赫山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2254', N'430921', N'430900', N'南　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2255', N'430922', N'430900', N'桃江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2256', N'430923', N'430900', N'安化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2257', N'430981', N'430900', N'沅江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2258', N'431001', N'431000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2259', N'431002', N'431000', N'北湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2260', N'431003', N'431000', N'苏仙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2261', N'431021', N'431000', N'桂阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2262', N'431022', N'431000', N'宜章县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2263', N'431023', N'431000', N'永兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2264', N'431024', N'431000', N'嘉禾县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2265', N'431025', N'431000', N'临武县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2266', N'431026', N'431000', N'汝城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2267', N'431027', N'431000', N'桂东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2268', N'431028', N'431000', N'安仁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2269', N'431081', N'431000', N'资兴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2270', N'431101', N'431100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2271', N'431102', N'431100', N'芝山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2272', N'431103', N'431100', N'冷水滩区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2273', N'431121', N'431100', N'祁阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2274', N'431122', N'431100', N'东安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2275', N'431123', N'431100', N'双牌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2276', N'431124', N'431100', N'道　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2277', N'431125', N'431100', N'江永县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2278', N'431126', N'431100', N'宁远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2279', N'431127', N'431100', N'蓝山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2280', N'431128', N'431100', N'新田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2281', N'431129', N'431100', N'江华瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2282', N'431201', N'431200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2283', N'431202', N'431200', N'鹤城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2284', N'431221', N'431200', N'中方县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2285', N'431222', N'431200', N'沅陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2286', N'431223', N'431200', N'辰溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2287', N'431224', N'431200', N'溆浦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2288', N'431225', N'431200', N'会同县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2289', N'431226', N'431200', N'麻阳苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2290', N'431227', N'431200', N'新晃侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2291', N'431228', N'431200', N'芷江侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2292', N'431229', N'431200', N'靖州苗族侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2293', N'431230', N'431200', N'通道侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2294', N'431281', N'431200', N'洪江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2295', N'431301', N'431300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2296', N'431302', N'431300', N'娄星区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2297', N'431321', N'431300', N'双峰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2298', N'431322', N'431300', N'新化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2299', N'431381', N'431300', N'冷水江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2300', N'431382', N'431300', N'涟源市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2301', N'433101', N'433100', N'吉首市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2302', N'433122', N'433100', N'泸溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2303', N'433123', N'433100', N'凤凰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2304', N'433124', N'433100', N'花垣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2305', N'433125', N'433100', N'保靖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2306', N'433126', N'433100', N'古丈县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2307', N'433127', N'433100', N'永顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2308', N'433130', N'433100', N'龙山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2309', N'440101', N'440100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2310', N'440102', N'440100', N'东山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2311', N'440103', N'440100', N'荔湾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2312', N'440104', N'440100', N'越秀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2313', N'440105', N'440100', N'海珠区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2314', N'440106', N'440100', N'天河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2315', N'440107', N'440100', N'芳村区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2316', N'440111', N'440100', N'白云区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2317', N'440112', N'440100', N'黄埔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2318', N'440113', N'440100', N'番禺区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2319', N'440114', N'440100', N'花都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2320', N'440183', N'440100', N'增城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2321', N'440184', N'440100', N'从化市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2322', N'440201', N'440200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2323', N'440203', N'440200', N'武江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2324', N'440204', N'440200', N'浈江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2325', N'440205', N'440200', N'曲江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2326', N'440222', N'440200', N'始兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2327', N'440224', N'440200', N'仁化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2328', N'440229', N'440200', N'翁源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2329', N'440232', N'440200', N'乳源瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2330', N'440233', N'440200', N'新丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2331', N'440281', N'440200', N'乐昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2332', N'440282', N'440200', N'南雄市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2333', N'440301', N'440300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2334', N'440303', N'440300', N'罗湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2335', N'440304', N'440300', N'福田区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2336', N'440305', N'440300', N'南山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2337', N'440306', N'440300', N'宝安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2338', N'440307', N'440300', N'龙岗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2339', N'440308', N'440300', N'盐田区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2340', N'440401', N'440400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2341', N'440402', N'440400', N'香洲区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2342', N'440403', N'440400', N'斗门区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2343', N'440404', N'440400', N'金湾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2344', N'440501', N'440500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2345', N'440507', N'440500', N'龙湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2346', N'440511', N'440500', N'金平区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2347', N'440512', N'440500', N'濠江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2348', N'440513', N'440500', N'潮阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2349', N'440514', N'440500', N'潮南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2350', N'440515', N'440500', N'澄海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2351', N'440523', N'440500', N'南澳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2352', N'440601', N'440600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2353', N'440604', N'440600', N'禅城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2354', N'440605', N'440600', N'南海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2355', N'440606', N'440600', N'顺德区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2356', N'440607', N'440600', N'三水区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2357', N'440608', N'440600', N'高明区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2358', N'440701', N'440700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2359', N'440703', N'440700', N'蓬江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2360', N'440704', N'440700', N'江海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2361', N'440705', N'440700', N'新会区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2362', N'440781', N'440700', N'台山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2363', N'440783', N'440700', N'开平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2364', N'440784', N'440700', N'鹤山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2365', N'440785', N'440700', N'恩平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2366', N'440801', N'440800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2367', N'440802', N'440800', N'赤坎区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2368', N'440803', N'440800', N'霞山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2369', N'440804', N'440800', N'坡头区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2370', N'440811', N'440800', N'麻章区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2371', N'440823', N'440800', N'遂溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2372', N'440825', N'440800', N'徐闻县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2373', N'440881', N'440800', N'廉江市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2374', N'440882', N'440800', N'雷州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2375', N'440883', N'440800', N'吴川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2376', N'440901', N'440900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2377', N'440902', N'440900', N'茂南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2378', N'440903', N'440900', N'茂港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2379', N'440923', N'440900', N'电白县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2380', N'440981', N'440900', N'高州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2381', N'440982', N'440900', N'化州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2382', N'440983', N'440900', N'信宜市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2383', N'441201', N'441200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2384', N'441202', N'441200', N'端州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2385', N'441203', N'441200', N'鼎湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2386', N'441223', N'441200', N'广宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2387', N'441224', N'441200', N'怀集县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2388', N'441225', N'441200', N'封开县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2389', N'441226', N'441200', N'德庆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2390', N'441283', N'441200', N'高要市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2391', N'441284', N'441200', N'四会市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2392', N'441301', N'441300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2393', N'441302', N'441300', N'惠城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2394', N'441303', N'441300', N'惠阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2395', N'441322', N'441300', N'博罗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2396', N'441323', N'441300', N'惠东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2397', N'441324', N'441300', N'龙门县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2398', N'441401', N'441400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2399', N'441402', N'441400', N'梅江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2400', N'441421', N'441400', N'梅　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2401', N'441422', N'441400', N'大埔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2402', N'441423', N'441400', N'丰顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2403', N'441424', N'441400', N'五华县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2404', N'441426', N'441400', N'平远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2405', N'441427', N'441400', N'蕉岭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2406', N'441481', N'441400', N'兴宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2407', N'441501', N'441500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2408', N'441502', N'441500', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2409', N'441521', N'441500', N'海丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2410', N'441523', N'441500', N'陆河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2411', N'441581', N'441500', N'陆丰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2412', N'441601', N'441600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2413', N'441602', N'441600', N'源城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2414', N'441621', N'441600', N'紫金县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2415', N'441622', N'441600', N'龙川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2416', N'441623', N'441600', N'连平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2417', N'441624', N'441600', N'和平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2418', N'441625', N'441600', N'东源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2419', N'441701', N'441700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2420', N'441702', N'441700', N'江城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2421', N'441721', N'441700', N'阳西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2422', N'441723', N'441700', N'阳东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2423', N'441781', N'441700', N'阳春市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2424', N'441801', N'441800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2425', N'441802', N'441800', N'清城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2426', N'441821', N'441800', N'佛冈县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2427', N'441823', N'441800', N'阳山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2428', N'441825', N'441800', N'连山壮族瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2429', N'441826', N'441800', N'连南瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2430', N'441827', N'441800', N'清新县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2431', N'441881', N'441800', N'英德市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2432', N'441882', N'441800', N'连州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2433', N'445101', N'445100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2434', N'445102', N'445100', N'湘桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2435', N'445121', N'445100', N'潮安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2436', N'445122', N'445100', N'饶平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2437', N'445201', N'445200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2438', N'445202', N'445200', N'榕城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2439', N'445221', N'445200', N'揭东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2440', N'445222', N'445200', N'揭西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2441', N'445224', N'445200', N'惠来县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2442', N'445281', N'445200', N'普宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2443', N'445301', N'445300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2444', N'445302', N'445300', N'云城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2445', N'445321', N'445300', N'新兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2446', N'445322', N'445300', N'郁南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2447', N'445323', N'445300', N'云安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2448', N'445381', N'445300', N'罗定市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2449', N'450101', N'450100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2450', N'450102', N'450100', N'兴宁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2451', N'450103', N'450100', N'青秀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2452', N'450105', N'450100', N'江南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2453', N'450107', N'450100', N'西乡塘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2454', N'450108', N'450100', N'良庆区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2455', N'450109', N'450100', N'邕宁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2456', N'450122', N'450100', N'武鸣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2457', N'450123', N'450100', N'隆安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2458', N'450124', N'450100', N'马山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2459', N'450125', N'450100', N'上林县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2460', N'450126', N'450100', N'宾阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2461', N'450127', N'450100', N'横　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2462', N'450201', N'450200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2463', N'450202', N'450200', N'城中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2464', N'450203', N'450200', N'鱼峰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2465', N'450204', N'450200', N'柳南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2466', N'450205', N'450200', N'柳北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2467', N'450221', N'450200', N'柳江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2468', N'450222', N'450200', N'柳城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2469', N'450223', N'450200', N'鹿寨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2470', N'450224', N'450200', N'融安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2471', N'450225', N'450200', N'融水苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2472', N'450226', N'450200', N'三江侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2473', N'450301', N'450300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2474', N'450302', N'450300', N'秀峰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2475', N'450303', N'450300', N'叠彩区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2476', N'450304', N'450300', N'象山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2477', N'450305', N'450300', N'七星区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2478', N'450311', N'450300', N'雁山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2479', N'450321', N'450300', N'阳朔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2480', N'450322', N'450300', N'临桂县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2481', N'450323', N'450300', N'灵川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2482', N'450324', N'450300', N'全州县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2483', N'450325', N'450300', N'兴安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2484', N'450326', N'450300', N'永福县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2485', N'450327', N'450300', N'灌阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2486', N'450328', N'450300', N'龙胜各族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2487', N'450329', N'450300', N'资源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2488', N'450330', N'450300', N'平乐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2489', N'450331', N'450300', N'荔蒲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2490', N'450332', N'450300', N'恭城瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2491', N'450401', N'450400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2492', N'450403', N'450400', N'万秀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2493', N'450404', N'450400', N'蝶山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2494', N'450405', N'450400', N'长洲区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2495', N'450421', N'450400', N'苍梧县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2496', N'450422', N'450400', N'藤　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2497', N'450423', N'450400', N'蒙山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2498', N'450481', N'450400', N'岑溪市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2499', N'450501', N'450500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2500', N'450502', N'450500', N'海城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2501', N'450503', N'450500', N'银海区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2502', N'450512', N'450500', N'铁山港区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2503', N'450521', N'450500', N'合浦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2504', N'450601', N'450600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2505', N'450602', N'450600', N'港口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2506', N'450603', N'450600', N'防城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2507', N'450621', N'450600', N'上思县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2508', N'450681', N'450600', N'东兴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2509', N'450701', N'450700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2510', N'450702', N'450700', N'钦南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2511', N'450703', N'450700', N'钦北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2512', N'450721', N'450700', N'灵山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2513', N'450722', N'450700', N'浦北县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2514', N'450801', N'450800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2515', N'450802', N'450800', N'港北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2516', N'450803', N'450800', N'港南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2517', N'450804', N'450800', N'覃塘区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2518', N'450821', N'450800', N'平南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2519', N'450881', N'450800', N'桂平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2520', N'450901', N'450900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2521', N'450902', N'450900', N'玉州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2522', N'450921', N'450900', N'容　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2523', N'450922', N'450900', N'陆川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2524', N'450923', N'450900', N'博白县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2525', N'450924', N'450900', N'兴业县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2526', N'450981', N'450900', N'北流市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2527', N'451001', N'451000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2528', N'451002', N'451000', N'右江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2529', N'451021', N'451000', N'田阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2530', N'451022', N'451000', N'田东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2531', N'451023', N'451000', N'平果县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2532', N'451024', N'451000', N'德保县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2533', N'451025', N'451000', N'靖西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2534', N'451026', N'451000', N'那坡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2535', N'451027', N'451000', N'凌云县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2536', N'451028', N'451000', N'乐业县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2537', N'451029', N'451000', N'田林县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2538', N'451030', N'451000', N'西林县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2539', N'451031', N'451000', N'隆林各族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2540', N'451101', N'451100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2541', N'451102', N'451100', N'八步区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2542', N'451121', N'451100', N'昭平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2543', N'451122', N'451100', N'钟山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2544', N'451123', N'451100', N'富川瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2545', N'451201', N'451200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2546', N'451202', N'451200', N'金城江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2547', N'451221', N'451200', N'南丹县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2548', N'451222', N'451200', N'天峨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2549', N'451223', N'451200', N'凤山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2550', N'451224', N'451200', N'东兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2551', N'451225', N'451200', N'罗城仫佬族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2552', N'451226', N'451200', N'环江毛南族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2553', N'451227', N'451200', N'巴马瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2554', N'451228', N'451200', N'都安瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2555', N'451229', N'451200', N'大化瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2556', N'451281', N'451200', N'宜州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2557', N'451301', N'451300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2558', N'451302', N'451300', N'兴宾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2559', N'451321', N'451300', N'忻城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2560', N'451322', N'451300', N'象州县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2561', N'451323', N'451300', N'武宣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2562', N'451324', N'451300', N'金秀瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2563', N'451381', N'451300', N'合山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2564', N'451401', N'451400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2565', N'451402', N'451400', N'江洲区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2566', N'451421', N'451400', N'扶绥县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2567', N'451422', N'451400', N'宁明县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2568', N'451423', N'451400', N'龙州县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2569', N'451424', N'451400', N'大新县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2570', N'451425', N'451400', N'天等县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2571', N'451481', N'451400', N'凭祥市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2572', N'460101', N'460100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2573', N'460105', N'460100', N'秀英区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2574', N'460106', N'460100', N'龙华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2575', N'460107', N'460100', N'琼山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2576', N'460108', N'460100', N'美兰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2577', N'460201', N'460200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2578', N'469001', N'469000', N'五指山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2579', N'469002', N'469000', N'琼海市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2580', N'469003', N'469000', N'儋州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2581', N'469005', N'469000', N'文昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2582', N'469006', N'469000', N'万宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2583', N'469007', N'469000', N'东方市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2584', N'469025', N'469000', N'定安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2585', N'469026', N'469000', N'屯昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2586', N'469027', N'469000', N'澄迈县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2587', N'469028', N'469000', N'临高县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2588', N'469030', N'469000', N'白沙黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2589', N'469031', N'469000', N'昌江黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2590', N'469033', N'469000', N'乐东黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2591', N'469034', N'469000', N'陵水黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2592', N'469035', N'469000', N'保亭黎族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2593', N'469036', N'469000', N'琼中黎族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2594', N'469037', N'469000', N'西沙群岛')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2595', N'469038', N'469000', N'南沙群岛')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2596', N'469039', N'469000', N'中沙群岛的岛礁及其海域')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2597', N'500101', N'500100', N'万州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2598', N'500102', N'500100', N'涪陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2599', N'500103', N'500100', N'渝中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2600', N'500104', N'500100', N'大渡口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2601', N'500105', N'500100', N'江北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2602', N'500106', N'500100', N'沙坪坝区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2603', N'500107', N'500100', N'九龙坡区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2604', N'500108', N'500100', N'南岸区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2605', N'500109', N'500100', N'北碚区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2606', N'500110', N'500100', N'万盛区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2607', N'500111', N'500100', N'双桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2608', N'500112', N'500100', N'渝北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2609', N'500113', N'500100', N'巴南区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2610', N'500114', N'500100', N'黔江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2611', N'500115', N'500100', N'长寿区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2612', N'500222', N'500100', N'綦江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2613', N'500223', N'500100', N'潼南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2614', N'500224', N'500100', N'铜梁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2615', N'500225', N'500100', N'大足县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2616', N'500226', N'500100', N'荣昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2617', N'500227', N'500100', N'璧山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2618', N'500228', N'500100', N'梁平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2619', N'500229', N'500100', N'城口县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2620', N'500230', N'500100', N'丰都县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2621', N'500231', N'500100', N'垫江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2622', N'500232', N'500100', N'武隆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2623', N'500233', N'500100', N'忠　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2624', N'500234', N'500100', N'开　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2625', N'500235', N'500100', N'云阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2626', N'500236', N'500100', N'奉节县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2627', N'500237', N'500100', N'巫山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2628', N'500238', N'500100', N'巫溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2629', N'500240', N'500100', N'石柱土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2630', N'500241', N'500100', N'秀山土家族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2631', N'500242', N'500100', N'酉阳土家族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2632', N'500243', N'500100', N'彭水苗族土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2633', N'500381', N'500100', N'江津市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2634', N'500382', N'500100', N'合川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2635', N'500383', N'500100', N'永川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2636', N'500384', N'500100', N'南川市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2637', N'510101', N'510100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2638', N'510104', N'510100', N'锦江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2639', N'510105', N'510100', N'青羊区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2640', N'510106', N'510100', N'金牛区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2641', N'510107', N'510100', N'武侯区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2642', N'510108', N'510100', N'成华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2643', N'510112', N'510100', N'龙泉驿区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2644', N'510113', N'510100', N'青白江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2645', N'510114', N'510100', N'新都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2646', N'510115', N'510100', N'温江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2647', N'510121', N'510100', N'金堂县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2648', N'510122', N'510100', N'双流县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2649', N'510124', N'510100', N'郫　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2650', N'510129', N'510100', N'大邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2651', N'510131', N'510100', N'蒲江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2652', N'510132', N'510100', N'新津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2653', N'510181', N'510100', N'都江堰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2654', N'510182', N'510100', N'彭州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2655', N'510183', N'510100', N'邛崃市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2656', N'510184', N'510100', N'崇州市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2657', N'510301', N'510300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2658', N'510302', N'510300', N'自流井区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2659', N'510303', N'510300', N'贡井区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2660', N'510304', N'510300', N'大安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2661', N'510311', N'510300', N'沿滩区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2662', N'510321', N'510300', N'荣　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2663', N'510322', N'510300', N'富顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2664', N'510401', N'510400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2665', N'510402', N'510400', N'东　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2666', N'510403', N'510400', N'西　区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2667', N'510411', N'510400', N'仁和区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2668', N'510421', N'510400', N'米易县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2669', N'510422', N'510400', N'盐边县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2670', N'510501', N'510500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2671', N'510502', N'510500', N'江阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2672', N'510503', N'510500', N'纳溪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2673', N'510504', N'510500', N'龙马潭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2674', N'510521', N'510500', N'泸　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2675', N'510522', N'510500', N'合江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2676', N'510524', N'510500', N'叙永县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2677', N'510525', N'510500', N'古蔺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2678', N'510601', N'510600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2679', N'510603', N'510600', N'旌阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2680', N'510623', N'510600', N'中江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2681', N'510626', N'510600', N'罗江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2682', N'510681', N'510600', N'广汉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2683', N'510682', N'510600', N'什邡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2684', N'510683', N'510600', N'绵竹市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2685', N'510701', N'510700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2686', N'510703', N'510700', N'涪城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2687', N'510704', N'510700', N'游仙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2688', N'510722', N'510700', N'三台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2689', N'510723', N'510700', N'盐亭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2690', N'510724', N'510700', N'安　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2691', N'510725', N'510700', N'梓潼县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2692', N'510726', N'510700', N'北川羌族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2693', N'510727', N'510700', N'平武县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2694', N'510781', N'510700', N'江油市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2695', N'510801', N'510800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2696', N'510802', N'510800', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2697', N'510811', N'510800', N'元坝区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2698', N'510812', N'510800', N'朝天区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2699', N'510821', N'510800', N'旺苍县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2700', N'510822', N'510800', N'青川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2701', N'510823', N'510800', N'剑阁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2702', N'510824', N'510800', N'苍溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2703', N'510901', N'510900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2704', N'510903', N'510900', N'船山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2705', N'510904', N'510900', N'安居区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2706', N'510921', N'510900', N'蓬溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2707', N'510922', N'510900', N'射洪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2708', N'510923', N'510900', N'大英县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2709', N'511001', N'511000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2710', N'511002', N'511000', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2711', N'511011', N'511000', N'东兴区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2712', N'511024', N'511000', N'威远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2713', N'511025', N'511000', N'资中县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2714', N'511028', N'511000', N'隆昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2715', N'511101', N'511100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2716', N'511102', N'511100', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2717', N'511111', N'511100', N'沙湾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2718', N'511112', N'511100', N'五通桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2719', N'511113', N'511100', N'金口河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2720', N'511123', N'511100', N'犍为县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2721', N'511124', N'511100', N'井研县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2722', N'511126', N'511100', N'夹江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2723', N'511129', N'511100', N'沐川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2724', N'511132', N'511100', N'峨边彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2725', N'511133', N'511100', N'马边彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2726', N'511181', N'511100', N'峨眉山市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2727', N'511301', N'511300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2728', N'511302', N'511300', N'顺庆区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2729', N'511303', N'511300', N'高坪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2730', N'511304', N'511300', N'嘉陵区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2731', N'511321', N'511300', N'南部县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2732', N'511322', N'511300', N'营山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2733', N'511323', N'511300', N'蓬安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2734', N'511324', N'511300', N'仪陇县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2735', N'511325', N'511300', N'西充县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2736', N'511381', N'511300', N'阆中市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2737', N'511401', N'511400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2738', N'511402', N'511400', N'东坡区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2739', N'511421', N'511400', N'仁寿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2740', N'511422', N'511400', N'彭山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2741', N'511423', N'511400', N'洪雅县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2742', N'511424', N'511400', N'丹棱县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2743', N'511425', N'511400', N'青神县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2744', N'511501', N'511500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2745', N'511502', N'511500', N'翠屏区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2746', N'511521', N'511500', N'宜宾县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2747', N'511522', N'511500', N'南溪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2748', N'511523', N'511500', N'江安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2749', N'511524', N'511500', N'长宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2750', N'511525', N'511500', N'高　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2751', N'511526', N'511500', N'珙　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2752', N'511527', N'511500', N'筠连县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2753', N'511528', N'511500', N'兴文县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2754', N'511529', N'511500', N'屏山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2755', N'511601', N'511600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2756', N'511602', N'511600', N'广安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2757', N'511621', N'511600', N'岳池县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2758', N'511622', N'511600', N'武胜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2759', N'511623', N'511600', N'邻水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2760', N'511681', N'511600', N'华莹市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2761', N'511701', N'511700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2762', N'511702', N'511700', N'通川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2763', N'511721', N'511700', N'达　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2764', N'511722', N'511700', N'宣汉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2765', N'511723', N'511700', N'开江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2766', N'511724', N'511700', N'大竹县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2767', N'511725', N'511700', N'渠　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2768', N'511781', N'511700', N'万源市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2769', N'511801', N'511800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2770', N'511802', N'511800', N'雨城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2771', N'511821', N'511800', N'名山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2772', N'511822', N'511800', N'荥经县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2773', N'511823', N'511800', N'汉源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2774', N'511824', N'511800', N'石棉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2775', N'511825', N'511800', N'天全县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2776', N'511826', N'511800', N'芦山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2777', N'511827', N'511800', N'宝兴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2778', N'511901', N'511900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2779', N'511902', N'511900', N'巴州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2780', N'511921', N'511900', N'通江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2781', N'511922', N'511900', N'南江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2782', N'511923', N'511900', N'平昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2783', N'512001', N'512000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2784', N'512002', N'512000', N'雁江区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2785', N'512021', N'512000', N'安岳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2786', N'512022', N'512000', N'乐至县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2787', N'512081', N'512000', N'简阳市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2788', N'513221', N'513200', N'汶川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2789', N'513222', N'513200', N'理　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2790', N'513223', N'513200', N'茂　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2791', N'513224', N'513200', N'松潘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2792', N'513225', N'513200', N'九寨沟县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2793', N'513226', N'513200', N'金川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2794', N'513227', N'513200', N'小金县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2795', N'513228', N'513200', N'黑水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2796', N'513229', N'513200', N'马尔康县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2797', N'513230', N'513200', N'壤塘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2798', N'513231', N'513200', N'阿坝县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2799', N'513232', N'513200', N'若尔盖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2800', N'513233', N'513200', N'红原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2801', N'513321', N'513300', N'康定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2802', N'513322', N'513300', N'泸定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2803', N'513323', N'513300', N'丹巴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2804', N'513324', N'513300', N'九龙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2805', N'513325', N'513300', N'雅江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2806', N'513326', N'513300', N'道孚县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2807', N'513327', N'513300', N'炉霍县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2808', N'513328', N'513300', N'甘孜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2809', N'513329', N'513300', N'新龙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2810', N'513330', N'513300', N'德格县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2811', N'513331', N'513300', N'白玉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2812', N'513332', N'513300', N'石渠县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2813', N'513333', N'513300', N'色达县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2814', N'513334', N'513300', N'理塘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2815', N'513335', N'513300', N'巴塘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2816', N'513336', N'513300', N'乡城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2817', N'513337', N'513300', N'稻城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2818', N'513338', N'513300', N'得荣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2819', N'513401', N'513400', N'西昌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2820', N'513422', N'513400', N'木里藏族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2821', N'513423', N'513400', N'盐源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2822', N'513424', N'513400', N'德昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2823', N'513425', N'513400', N'会理县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2824', N'513426', N'513400', N'会东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2825', N'513427', N'513400', N'宁南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2826', N'513428', N'513400', N'普格县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2827', N'513429', N'513400', N'布拖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2828', N'513430', N'513400', N'金阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2829', N'513431', N'513400', N'昭觉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2830', N'513432', N'513400', N'喜德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2831', N'513433', N'513400', N'冕宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2832', N'513434', N'513400', N'越西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2833', N'513435', N'513400', N'甘洛县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2834', N'513436', N'513400', N'美姑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2835', N'513437', N'513400', N'雷波县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2836', N'520101', N'520100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2837', N'520102', N'520100', N'南明区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2838', N'520103', N'520100', N'云岩区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2839', N'520111', N'520100', N'花溪区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2840', N'520112', N'520100', N'乌当区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2841', N'520113', N'520100', N'白云区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2842', N'520114', N'520100', N'小河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2843', N'520121', N'520100', N'开阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2844', N'520122', N'520100', N'息烽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2845', N'520123', N'520100', N'修文县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2846', N'520181', N'520100', N'清镇市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2847', N'520201', N'520200', N'钟山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2848', N'520203', N'520200', N'六枝特区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2849', N'520221', N'520200', N'水城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2850', N'520222', N'520200', N'盘　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2851', N'520301', N'520300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2852', N'520302', N'520300', N'红花岗区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2853', N'520303', N'520300', N'汇川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2854', N'520321', N'520300', N'遵义县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2855', N'520322', N'520300', N'桐梓县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2856', N'520323', N'520300', N'绥阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2857', N'520324', N'520300', N'正安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2858', N'520325', N'520300', N'道真仡佬族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2859', N'520326', N'520300', N'务川仡佬族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2860', N'520327', N'520300', N'凤冈县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2861', N'520328', N'520300', N'湄潭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2862', N'520329', N'520300', N'余庆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2863', N'520330', N'520300', N'习水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2864', N'520381', N'520300', N'赤水市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2865', N'520382', N'520300', N'仁怀市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2866', N'520401', N'520400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2867', N'520402', N'520400', N'西秀区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2868', N'520421', N'520400', N'平坝县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2869', N'520422', N'520400', N'普定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2870', N'520423', N'520400', N'镇宁布依族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2871', N'520424', N'520400', N'关岭布依族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2872', N'520425', N'520400', N'紫云苗族布依族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2873', N'522201', N'522200', N'铜仁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2874', N'522222', N'522200', N'江口县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2875', N'522223', N'522200', N'玉屏侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2876', N'522224', N'522200', N'石阡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2877', N'522225', N'522200', N'思南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2878', N'522226', N'522200', N'印江土家族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2879', N'522227', N'522200', N'德江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2880', N'522228', N'522200', N'沿河土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2881', N'522229', N'522200', N'松桃苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2882', N'522230', N'522200', N'万山特区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2883', N'522301', N'522300', N'兴义市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2884', N'522322', N'522300', N'兴仁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2885', N'522323', N'522300', N'普安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2886', N'522324', N'522300', N'晴隆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2887', N'522325', N'522300', N'贞丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2888', N'522326', N'522300', N'望谟县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2889', N'522327', N'522300', N'册亨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2890', N'522328', N'522300', N'安龙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2891', N'522401', N'522400', N'毕节市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2892', N'522422', N'522400', N'大方县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2893', N'522423', N'522400', N'黔西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2894', N'522424', N'522400', N'金沙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2895', N'522425', N'522400', N'织金县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2896', N'522426', N'522400', N'纳雍县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2897', N'522427', N'522400', N'威宁彝族回族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2898', N'522428', N'522400', N'赫章县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2899', N'522601', N'522600', N'凯里市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2900', N'522622', N'522600', N'黄平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2901', N'522623', N'522600', N'施秉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2902', N'522624', N'522600', N'三穗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2903', N'522625', N'522600', N'镇远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2904', N'522626', N'522600', N'岑巩县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2905', N'522627', N'522600', N'天柱县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2906', N'522628', N'522600', N'锦屏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2907', N'522629', N'522600', N'剑河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2908', N'522630', N'522600', N'台江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2909', N'522631', N'522600', N'黎平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2910', N'522632', N'522600', N'榕江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2911', N'522633', N'522600', N'从江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2912', N'522634', N'522600', N'雷山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2913', N'522635', N'522600', N'麻江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2914', N'522636', N'522600', N'丹寨县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2915', N'522701', N'522700', N'都匀市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2916', N'522702', N'522700', N'福泉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2917', N'522722', N'522700', N'荔波县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2918', N'522723', N'522700', N'贵定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2919', N'522725', N'522700', N'瓮安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2920', N'522726', N'522700', N'独山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2921', N'522727', N'522700', N'平塘县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2922', N'522728', N'522700', N'罗甸县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2923', N'522729', N'522700', N'长顺县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2924', N'522730', N'522700', N'龙里县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2925', N'522731', N'522700', N'惠水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2926', N'522732', N'522700', N'三都水族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2927', N'530101', N'530100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2928', N'530102', N'530100', N'五华区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2929', N'530103', N'530100', N'盘龙区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2930', N'530111', N'530100', N'官渡区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2931', N'530112', N'530100', N'西山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2932', N'530113', N'530100', N'东川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2933', N'530121', N'530100', N'呈贡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2934', N'530122', N'530100', N'晋宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2935', N'530124', N'530100', N'富民县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2936', N'530125', N'530100', N'宜良县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2937', N'530126', N'530100', N'石林彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2938', N'530127', N'530100', N'嵩明县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2939', N'530128', N'530100', N'禄劝彝族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2940', N'530129', N'530100', N'寻甸回族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2941', N'530181', N'530100', N'安宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2942', N'530301', N'530300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2943', N'530302', N'530300', N'麒麟区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2944', N'530321', N'530300', N'马龙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2945', N'530322', N'530300', N'陆良县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2946', N'530323', N'530300', N'师宗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2947', N'530324', N'530300', N'罗平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2948', N'530325', N'530300', N'富源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2949', N'530326', N'530300', N'会泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2950', N'530328', N'530300', N'沾益县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2951', N'530381', N'530300', N'宣威市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2952', N'530401', N'530400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2953', N'530402', N'530400', N'红塔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2954', N'530421', N'530400', N'江川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2955', N'530422', N'530400', N'澄江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2956', N'530423', N'530400', N'通海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2957', N'530424', N'530400', N'华宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2958', N'530425', N'530400', N'易门县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2959', N'530426', N'530400', N'峨山彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2960', N'530427', N'530400', N'新平彝族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2961', N'530428', N'530400', N'元江哈尼族彝族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2962', N'530501', N'530500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2963', N'530502', N'530500', N'隆阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2964', N'530521', N'530500', N'施甸县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2965', N'530522', N'530500', N'腾冲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2966', N'530523', N'530500', N'龙陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2967', N'530524', N'530500', N'昌宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2968', N'530601', N'530600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2969', N'530602', N'530600', N'昭阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2970', N'530621', N'530600', N'鲁甸县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2971', N'530622', N'530600', N'巧家县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2972', N'530623', N'530600', N'盐津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2973', N'530624', N'530600', N'大关县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2974', N'530625', N'530600', N'永善县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2975', N'530626', N'530600', N'绥江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2976', N'530627', N'530600', N'镇雄县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2977', N'530628', N'530600', N'彝良县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2978', N'530629', N'530600', N'威信县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2979', N'530630', N'530600', N'水富县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2980', N'530701', N'530700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2981', N'530702', N'530700', N'古城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2982', N'530721', N'530700', N'玉龙纳西族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2983', N'530722', N'530700', N'永胜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2984', N'530723', N'530700', N'华坪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2985', N'530724', N'530700', N'宁蒗彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2986', N'530801', N'530800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2987', N'530802', N'530800', N'翠云区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2988', N'530821', N'530800', N'普洱哈尼族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2989', N'530822', N'530800', N'墨江哈尼族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2990', N'530823', N'530800', N'景东彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2991', N'530824', N'530800', N'景谷傣族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2992', N'530825', N'530800', N'镇沅彝族哈尼族拉祜族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2993', N'530826', N'530800', N'江城哈尼族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2994', N'530827', N'530800', N'孟连傣族拉祜族佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2995', N'530828', N'530800', N'澜沧拉祜族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2996', N'530829', N'530800', N'西盟佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2997', N'530901', N'530900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2998', N'530902', N'530900', N'临翔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2999', N'530921', N'530900', N'凤庆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3000', N'530922', N'530900', N'云　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3001', N'530923', N'530900', N'永德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3002', N'530924', N'530900', N'镇康县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3003', N'530925', N'530900', N'双江拉祜族佤族布朗族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3004', N'530926', N'530900', N'耿马傣族佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3005', N'530927', N'530900', N'沧源佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3006', N'532301', N'532300', N'楚雄市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3007', N'532322', N'532300', N'双柏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3008', N'532323', N'532300', N'牟定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3009', N'532324', N'532300', N'南华县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3010', N'532325', N'532300', N'姚安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3011', N'532326', N'532300', N'大姚县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3012', N'532327', N'532300', N'永仁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3013', N'532328', N'532300', N'元谋县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3014', N'532329', N'532300', N'武定县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3015', N'532331', N'532300', N'禄丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3016', N'532501', N'532500', N'个旧市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3017', N'532502', N'532500', N'开远市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3018', N'532522', N'532500', N'蒙自县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3019', N'532523', N'532500', N'屏边苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3020', N'532524', N'532500', N'建水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3021', N'532525', N'532500', N'石屏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3022', N'532526', N'532500', N'弥勒县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3023', N'532527', N'532500', N'泸西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3024', N'532528', N'532500', N'元阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3025', N'532529', N'532500', N'红河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3026', N'532530', N'532500', N'金平苗族瑶族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3027', N'532531', N'532500', N'绿春县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3028', N'532532', N'532500', N'河口瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3029', N'532621', N'532600', N'文山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3030', N'532622', N'532600', N'砚山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3031', N'532623', N'532600', N'西畴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3032', N'532624', N'532600', N'麻栗坡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3033', N'532625', N'532600', N'马关县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3034', N'532626', N'532600', N'丘北县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3035', N'532627', N'532600', N'广南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3036', N'532628', N'532600', N'富宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3037', N'532801', N'532800', N'景洪市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3038', N'532822', N'532800', N'勐海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3039', N'532823', N'532800', N'勐腊县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3040', N'532901', N'532900', N'大理市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3041', N'532922', N'532900', N'漾濞彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3042', N'532923', N'532900', N'祥云县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3043', N'532924', N'532900', N'宾川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3044', N'532925', N'532900', N'弥渡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3045', N'532926', N'532900', N'南涧彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3046', N'532927', N'532900', N'巍山彝族回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3047', N'532928', N'532900', N'永平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3048', N'532929', N'532900', N'云龙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3049', N'532930', N'532900', N'洱源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3050', N'532931', N'532900', N'剑川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3051', N'532932', N'532900', N'鹤庆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3052', N'533102', N'533100', N'瑞丽市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3053', N'533103', N'533100', N'潞西市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3054', N'533122', N'533100', N'梁河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3055', N'533123', N'533100', N'盈江县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3056', N'533124', N'533100', N'陇川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3057', N'533321', N'533300', N'泸水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3058', N'533323', N'533300', N'福贡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3059', N'533324', N'533300', N'贡山独龙族怒族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3060', N'533325', N'533300', N'兰坪白族普米族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3061', N'533421', N'533400', N'香格里拉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3062', N'533422', N'533400', N'德钦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3063', N'533423', N'533400', N'维西傈僳族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3064', N'540101', N'540100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3065', N'540102', N'540100', N'城关区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3066', N'540121', N'540100', N'林周县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3067', N'540122', N'540100', N'当雄县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3068', N'540123', N'540100', N'尼木县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3069', N'540124', N'540100', N'曲水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3070', N'540125', N'540100', N'堆龙德庆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3071', N'540126', N'540100', N'达孜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3072', N'540127', N'540100', N'墨竹工卡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3073', N'542121', N'542100', N'昌都县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3074', N'542122', N'542100', N'江达县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3075', N'542123', N'542100', N'贡觉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3076', N'542124', N'542100', N'类乌齐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3077', N'542125', N'542100', N'丁青县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3078', N'542126', N'542100', N'察雅县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3079', N'542127', N'542100', N'八宿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3080', N'542128', N'542100', N'左贡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3081', N'542129', N'542100', N'芒康县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3082', N'542132', N'542100', N'洛隆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3083', N'542133', N'542100', N'边坝县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3084', N'542221', N'542200', N'乃东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3085', N'542222', N'542200', N'扎囊县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3086', N'542223', N'542200', N'贡嘎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3087', N'542224', N'542200', N'桑日县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3088', N'542225', N'542200', N'琼结县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3089', N'542226', N'542200', N'曲松县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3090', N'542227', N'542200', N'措美县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3091', N'542228', N'542200', N'洛扎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3092', N'542229', N'542200', N'加查县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3093', N'542231', N'542200', N'隆子县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3094', N'542232', N'542200', N'错那县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3095', N'542233', N'542200', N'浪卡子县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3096', N'542301', N'542300', N'日喀则市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3097', N'542322', N'542300', N'南木林县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3098', N'542323', N'542300', N'江孜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3099', N'542324', N'542300', N'定日县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3100', N'542325', N'542300', N'萨迦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3101', N'542326', N'542300', N'拉孜县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3102', N'542327', N'542300', N'昂仁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3103', N'542328', N'542300', N'谢通门县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3104', N'542329', N'542300', N'白朗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3105', N'542330', N'542300', N'仁布县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3106', N'542331', N'542300', N'康马县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3107', N'542332', N'542300', N'定结县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3108', N'542333', N'542300', N'仲巴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3109', N'542334', N'542300', N'亚东县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3110', N'542335', N'542300', N'吉隆县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3111', N'542336', N'542300', N'聂拉木县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3112', N'542337', N'542300', N'萨嘎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3113', N'542338', N'542300', N'岗巴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3114', N'542421', N'542400', N'那曲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3115', N'542422', N'542400', N'嘉黎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3116', N'542423', N'542400', N'比如县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3117', N'542424', N'542400', N'聂荣县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3118', N'542425', N'542400', N'安多县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3119', N'542426', N'542400', N'申扎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3120', N'542427', N'542400', N'索　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3121', N'542428', N'542400', N'班戈县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3122', N'542429', N'542400', N'巴青县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3123', N'542430', N'542400', N'尼玛县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3124', N'542521', N'542500', N'普兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3125', N'542522', N'542500', N'札达县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3126', N'542523', N'542500', N'噶尔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3127', N'542524', N'542500', N'日土县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3128', N'542525', N'542500', N'革吉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3129', N'542526', N'542500', N'改则县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3130', N'542527', N'542500', N'措勤县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3131', N'542621', N'542600', N'林芝县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3132', N'542622', N'542600', N'工布江达县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3133', N'542623', N'542600', N'米林县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3134', N'542624', N'542600', N'墨脱县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3135', N'542625', N'542600', N'波密县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3136', N'542626', N'542600', N'察隅县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3137', N'542627', N'542600', N'朗　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3138', N'610101', N'610100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3139', N'610102', N'610100', N'新城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3140', N'610103', N'610100', N'碑林区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3141', N'610104', N'610100', N'莲湖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3142', N'610111', N'610100', N'灞桥区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3143', N'610112', N'610100', N'未央区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3144', N'610113', N'610100', N'雁塔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3145', N'610114', N'610100', N'阎良区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3146', N'610115', N'610100', N'临潼区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3147', N'610116', N'610100', N'长安区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3148', N'610122', N'610100', N'蓝田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3149', N'610124', N'610100', N'周至县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3150', N'610125', N'610100', N'户　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3151', N'610126', N'610100', N'高陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3152', N'610201', N'610200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3153', N'610202', N'610200', N'王益区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3154', N'610203', N'610200', N'印台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3155', N'610204', N'610200', N'耀州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3156', N'610222', N'610200', N'宜君县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3157', N'610301', N'610300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3158', N'610302', N'610300', N'渭滨区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3159', N'610303', N'610300', N'金台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3160', N'610304', N'610300', N'陈仓区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3161', N'610322', N'610300', N'凤翔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3162', N'610323', N'610300', N'岐山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3163', N'610324', N'610300', N'扶风县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3164', N'610326', N'610300', N'眉　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3165', N'610327', N'610300', N'陇　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3166', N'610328', N'610300', N'千阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3167', N'610329', N'610300', N'麟游县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3168', N'610330', N'610300', N'凤　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3169', N'610331', N'610300', N'太白县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3170', N'610401', N'610400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3171', N'610402', N'610400', N'秦都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3172', N'610403', N'610400', N'杨凌区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3173', N'610404', N'610400', N'渭城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3174', N'610422', N'610400', N'三原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3175', N'610423', N'610400', N'泾阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3176', N'610424', N'610400', N'乾　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3177', N'610425', N'610400', N'礼泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3178', N'610426', N'610400', N'永寿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3179', N'610427', N'610400', N'彬　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3180', N'610428', N'610400', N'长武县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3181', N'610429', N'610400', N'旬邑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3182', N'610430', N'610400', N'淳化县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3183', N'610431', N'610400', N'武功县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3184', N'610481', N'610400', N'兴平市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3185', N'610501', N'610500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3186', N'610502', N'610500', N'临渭区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3187', N'610521', N'610500', N'华　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3188', N'610522', N'610500', N'潼关县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3189', N'610523', N'610500', N'大荔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3190', N'610524', N'610500', N'合阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3191', N'610525', N'610500', N'澄城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3192', N'610526', N'610500', N'蒲城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3193', N'610527', N'610500', N'白水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3194', N'610528', N'610500', N'富平县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3195', N'610581', N'610500', N'韩城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3196', N'610582', N'610500', N'华阴市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3197', N'610601', N'610600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3198', N'610602', N'610600', N'宝塔区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3199', N'610621', N'610600', N'延长县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3200', N'610622', N'610600', N'延川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3201', N'610623', N'610600', N'子长县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3202', N'610624', N'610600', N'安塞县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3203', N'610625', N'610600', N'志丹县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3204', N'610626', N'610600', N'吴旗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3205', N'610627', N'610600', N'甘泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3206', N'610628', N'610600', N'富　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3207', N'610629', N'610600', N'洛川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3208', N'610630', N'610600', N'宜川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3209', N'610631', N'610600', N'黄龙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3210', N'610632', N'610600', N'黄陵县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3211', N'610701', N'610700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3212', N'610702', N'610700', N'汉台区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3213', N'610721', N'610700', N'南郑县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3214', N'610722', N'610700', N'城固县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3215', N'610723', N'610700', N'洋　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3216', N'610724', N'610700', N'西乡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3217', N'610725', N'610700', N'勉　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3218', N'610726', N'610700', N'宁强县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3219', N'610727', N'610700', N'略阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3220', N'610728', N'610700', N'镇巴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3221', N'610729', N'610700', N'留坝县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3222', N'610730', N'610700', N'佛坪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3223', N'610801', N'610800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3224', N'610802', N'610800', N'榆阳区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3225', N'610821', N'610800', N'神木县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3226', N'610822', N'610800', N'府谷县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3227', N'610823', N'610800', N'横山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3228', N'610824', N'610800', N'靖边县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3229', N'610825', N'610800', N'定边县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3230', N'610826', N'610800', N'绥德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3231', N'610827', N'610800', N'米脂县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3232', N'610828', N'610800', N'佳　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3233', N'610829', N'610800', N'吴堡县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3234', N'610830', N'610800', N'清涧县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3235', N'610831', N'610800', N'子洲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3236', N'610901', N'610900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3237', N'610902', N'610900', N'汉滨区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3238', N'610921', N'610900', N'汉阴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3239', N'610922', N'610900', N'石泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3240', N'610923', N'610900', N'宁陕县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3241', N'610924', N'610900', N'紫阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3242', N'610925', N'610900', N'岚皋县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3243', N'610926', N'610900', N'平利县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3244', N'610927', N'610900', N'镇坪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3245', N'610928', N'610900', N'旬阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3246', N'610929', N'610900', N'白河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3247', N'611001', N'611000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3248', N'611002', N'611000', N'商州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3249', N'611021', N'611000', N'洛南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3250', N'611022', N'611000', N'丹凤县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3251', N'611023', N'611000', N'商南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3252', N'611024', N'611000', N'山阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3253', N'611025', N'611000', N'镇安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3254', N'611026', N'611000', N'柞水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3255', N'620101', N'620100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3256', N'620102', N'620100', N'城关区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3257', N'620103', N'620100', N'七里河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3258', N'620104', N'620100', N'西固区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3259', N'620105', N'620100', N'安宁区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3260', N'620111', N'620100', N'红古区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3261', N'620121', N'620100', N'永登县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3262', N'620122', N'620100', N'皋兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3263', N'620123', N'620100', N'榆中县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3264', N'620201', N'620200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3265', N'620301', N'620300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3266', N'620302', N'620300', N'金川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3267', N'620321', N'620300', N'永昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3268', N'620401', N'620400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3269', N'620402', N'620400', N'白银区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3270', N'620403', N'620400', N'平川区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3271', N'620421', N'620400', N'靖远县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3272', N'620422', N'620400', N'会宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3273', N'620423', N'620400', N'景泰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3274', N'620501', N'620500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3275', N'620502', N'620500', N'秦城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3276', N'620503', N'620500', N'北道区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3277', N'620521', N'620500', N'清水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3278', N'620522', N'620500', N'秦安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3279', N'620523', N'620500', N'甘谷县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3280', N'620524', N'620500', N'武山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3281', N'620525', N'620500', N'张家川回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3282', N'620601', N'620600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3283', N'620602', N'620600', N'凉州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3284', N'620621', N'620600', N'民勤县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3285', N'620622', N'620600', N'古浪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3286', N'620623', N'620600', N'天祝藏族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3287', N'620701', N'620700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3288', N'620702', N'620700', N'甘州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3289', N'620721', N'620700', N'肃南裕固族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3290', N'620722', N'620700', N'民乐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3291', N'620723', N'620700', N'临泽县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3292', N'620724', N'620700', N'高台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3293', N'620725', N'620700', N'山丹县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3294', N'620801', N'620800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3295', N'620802', N'620800', N'崆峒区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3296', N'620821', N'620800', N'泾川县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3297', N'620822', N'620800', N'灵台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3298', N'620823', N'620800', N'崇信县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3299', N'620824', N'620800', N'华亭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3300', N'620825', N'620800', N'庄浪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3301', N'620826', N'620800', N'静宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3302', N'620901', N'620900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3303', N'620902', N'620900', N'肃州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3304', N'620921', N'620900', N'金塔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3305', N'620922', N'620900', N'安西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3306', N'620923', N'620900', N'肃北蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3307', N'620924', N'620900', N'阿克塞哈萨克族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3308', N'620981', N'620900', N'玉门市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3309', N'620982', N'620900', N'敦煌市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3310', N'621001', N'621000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3311', N'621002', N'621000', N'西峰区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3312', N'621021', N'621000', N'庆城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3313', N'621022', N'621000', N'环　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3314', N'621023', N'621000', N'华池县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3315', N'621024', N'621000', N'合水县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3316', N'621025', N'621000', N'正宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3317', N'621026', N'621000', N'宁　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3318', N'621027', N'621000', N'镇原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3319', N'621101', N'621100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3320', N'621102', N'621100', N'安定区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3321', N'621121', N'621100', N'通渭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3322', N'621122', N'621100', N'陇西县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3323', N'621123', N'621100', N'渭源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3324', N'621124', N'621100', N'临洮县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3325', N'621125', N'621100', N'漳　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3326', N'621126', N'621100', N'岷　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3327', N'621201', N'621200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3328', N'621202', N'621200', N'武都区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3329', N'621221', N'621200', N'成　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3330', N'621222', N'621200', N'文　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3331', N'621223', N'621200', N'宕昌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3332', N'621224', N'621200', N'康　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3333', N'621225', N'621200', N'西和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3334', N'621226', N'621200', N'礼　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3335', N'621227', N'621200', N'徽　县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3336', N'621228', N'621200', N'两当县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3337', N'622901', N'622900', N'临夏市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3338', N'622921', N'622900', N'临夏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3339', N'622922', N'622900', N'康乐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3340', N'622923', N'622900', N'永靖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3341', N'622924', N'622900', N'广河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3342', N'622925', N'622900', N'和政县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3343', N'622926', N'622900', N'东乡族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3344', N'622927', N'622900', N'积石山保安族东乡族撒拉族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3345', N'623001', N'623000', N'合作市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3346', N'623021', N'623000', N'临潭县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3347', N'623022', N'623000', N'卓尼县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3348', N'623023', N'623000', N'舟曲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3349', N'623024', N'623000', N'迭部县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3350', N'623025', N'623000', N'玛曲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3351', N'623026', N'623000', N'碌曲县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3352', N'623027', N'623000', N'夏河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3353', N'630101', N'630100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3354', N'630102', N'630100', N'城东区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3355', N'630103', N'630100', N'城中区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3356', N'630104', N'630100', N'城西区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3357', N'630105', N'630100', N'城北区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3358', N'630121', N'630100', N'大通回族土族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3359', N'630122', N'630100', N'湟中县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3360', N'630123', N'630100', N'湟源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3361', N'632121', N'632100', N'平安县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3362', N'632122', N'632100', N'民和回族土族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3363', N'632123', N'632100', N'乐都县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3364', N'632126', N'632100', N'互助土族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3365', N'632127', N'632100', N'化隆回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3366', N'632128', N'632100', N'循化撒拉族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3367', N'632221', N'632200', N'门源回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3368', N'632222', N'632200', N'祁连县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3369', N'632223', N'632200', N'海晏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3370', N'632224', N'632200', N'刚察县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3371', N'632321', N'632300', N'同仁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3372', N'632322', N'632300', N'尖扎县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3373', N'632323', N'632300', N'泽库县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3374', N'632324', N'632300', N'河南蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3375', N'632521', N'632500', N'共和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3376', N'632522', N'632500', N'同德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3377', N'632523', N'632500', N'贵德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3378', N'632524', N'632500', N'兴海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3379', N'632525', N'632500', N'贵南县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3380', N'632621', N'632600', N'玛沁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3381', N'632622', N'632600', N'班玛县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3382', N'632623', N'632600', N'甘德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3383', N'632624', N'632600', N'达日县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3384', N'632625', N'632600', N'久治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3385', N'632626', N'632600', N'玛多县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3386', N'632721', N'632700', N'玉树县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3387', N'632722', N'632700', N'杂多县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3388', N'632723', N'632700', N'称多县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3389', N'632724', N'632700', N'治多县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3390', N'632725', N'632700', N'囊谦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3391', N'632726', N'632700', N'曲麻莱县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3392', N'632801', N'632800', N'格尔木市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3393', N'632802', N'632800', N'德令哈市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3394', N'632821', N'632800', N'乌兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3395', N'632822', N'632800', N'都兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3396', N'632823', N'632800', N'天峻县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3397', N'640101', N'640100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3398', N'640104', N'640100', N'兴庆区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3399', N'640105', N'640100', N'西夏区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3400', N'640106', N'640100', N'金凤区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3401', N'640121', N'640100', N'永宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3402', N'640122', N'640100', N'贺兰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3403', N'640181', N'640100', N'灵武市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3404', N'640201', N'640200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3405', N'640202', N'640200', N'大武口区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3406', N'640205', N'640200', N'惠农区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3407', N'640221', N'640200', N'平罗县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3408', N'640301', N'640300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3409', N'640302', N'640300', N'利通区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3410', N'640323', N'640300', N'盐池县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3411', N'640324', N'640300', N'同心县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3412', N'640381', N'640300', N'青铜峡市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3413', N'640401', N'640400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3414', N'640402', N'640400', N'原州区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3415', N'640422', N'640400', N'西吉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3416', N'640423', N'640400', N'隆德县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3417', N'640424', N'640400', N'泾源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3418', N'640425', N'640400', N'彭阳县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3419', N'640501', N'640500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3420', N'640502', N'640500', N'沙坡头区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3421', N'640521', N'640500', N'中宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3422', N'640522', N'640500', N'海原县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3423', N'650101', N'650100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3424', N'650102', N'650100', N'天山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3425', N'650103', N'650100', N'沙依巴克区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3426', N'650104', N'650100', N'新市区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3427', N'650105', N'650100', N'水磨沟区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3428', N'650106', N'650100', N'头屯河区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3429', N'650107', N'650100', N'达坂城区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3430', N'650108', N'650100', N'东山区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3431', N'650121', N'650100', N'乌鲁木齐县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3432', N'650201', N'650200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3433', N'650202', N'650200', N'独山子区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3434', N'650203', N'650200', N'克拉玛依区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3435', N'650204', N'650200', N'白碱滩区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3436', N'650205', N'650200', N'乌尔禾区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3437', N'652101', N'652100', N'吐鲁番市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3438', N'652122', N'652100', N'鄯善县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3439', N'652123', N'652100', N'托克逊县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3440', N'652201', N'652200', N'哈密市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3441', N'652222', N'652200', N'巴里坤哈萨克自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3442', N'652223', N'652200', N'伊吾县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3443', N'652301', N'652300', N'昌吉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3444', N'652302', N'652300', N'阜康市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3445', N'652303', N'652300', N'米泉市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3446', N'652323', N'652300', N'呼图壁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3447', N'652324', N'652300', N'玛纳斯县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3448', N'652325', N'652300', N'奇台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3449', N'652327', N'652300', N'吉木萨尔县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3450', N'652328', N'652300', N'木垒哈萨克自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3451', N'652701', N'652700', N'博乐市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3452', N'652722', N'652700', N'精河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3453', N'652723', N'652700', N'温泉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3454', N'652801', N'652800', N'库尔勒市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3455', N'652822', N'652800', N'轮台县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3456', N'652823', N'652800', N'尉犁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3457', N'652824', N'652800', N'若羌县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3458', N'652825', N'652800', N'且末县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3459', N'652826', N'652800', N'焉耆回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3460', N'652827', N'652800', N'和静县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3461', N'652828', N'652800', N'和硕县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3462', N'652829', N'652800', N'博湖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3463', N'652901', N'652900', N'阿克苏市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3464', N'652922', N'652900', N'温宿县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3465', N'652923', N'652900', N'库车县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3466', N'652924', N'652900', N'沙雅县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3467', N'652925', N'652900', N'新和县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3468', N'652926', N'652900', N'拜城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3469', N'652927', N'652900', N'乌什县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3470', N'652928', N'652900', N'阿瓦提县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3471', N'652929', N'652900', N'柯坪县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3472', N'653001', N'653000', N'阿图什市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3473', N'653022', N'653000', N'阿克陶县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3474', N'653023', N'653000', N'阿合奇县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3475', N'653024', N'653000', N'乌恰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3476', N'653101', N'653100', N'喀什市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3477', N'653121', N'653100', N'疏附县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3478', N'653122', N'653100', N'疏勒县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3479', N'653123', N'653100', N'英吉沙县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3480', N'653124', N'653100', N'泽普县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3481', N'653125', N'653100', N'莎车县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3482', N'653126', N'653100', N'叶城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3483', N'653127', N'653100', N'麦盖提县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3484', N'653128', N'653100', N'岳普湖县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3485', N'653129', N'653100', N'伽师县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3486', N'653130', N'653100', N'巴楚县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3487', N'653131', N'653100', N'塔什库尔干塔吉克自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3488', N'653201', N'653200', N'和田市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3489', N'653221', N'653200', N'和田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3490', N'653222', N'653200', N'墨玉县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3491', N'653223', N'653200', N'皮山县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3492', N'653224', N'653200', N'洛浦县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3493', N'653225', N'653200', N'策勒县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3494', N'653226', N'653200', N'于田县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3495', N'653227', N'653200', N'民丰县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3496', N'654002', N'654000', N'伊宁市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3497', N'654003', N'654000', N'奎屯市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3498', N'654021', N'654000', N'伊宁县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3499', N'654022', N'654000', N'察布查尔锡伯自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3500', N'654023', N'654000', N'霍城县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3501', N'654024', N'654000', N'巩留县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3502', N'654025', N'654000', N'新源县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3503', N'654026', N'654000', N'昭苏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3504', N'654027', N'654000', N'特克斯县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3505', N'654028', N'654000', N'尼勒克县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3506', N'654201', N'654200', N'塔城市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3507', N'654202', N'654200', N'乌苏市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3508', N'654221', N'654200', N'额敏县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3509', N'654223', N'654200', N'沙湾县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3510', N'654224', N'654200', N'托里县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3511', N'654225', N'654200', N'裕民县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3512', N'654226', N'654200', N'和布克赛尔蒙古自治县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3513', N'654301', N'654300', N'阿勒泰市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3514', N'654321', N'654300', N'布尔津县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3515', N'654322', N'654300', N'富蕴县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3516', N'654323', N'654300', N'福海县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3517', N'654324', N'654300', N'哈巴河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3518', N'654325', N'654300', N'青河县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3519', N'654326', N'654300', N'吉木乃县')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3520', N'659001', N'659000', N'石河子市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3521', N'659002', N'659000', N'阿拉尔市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3522', N'659003', N'659000', N'图木舒克市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3523', N'659004', N'659000', N'五家渠市')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3524', N'710200', N'710000', N'香港特别行政区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3525', N'710100', N'710000', N'台湾')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3526', N'710300', N'710000', N'澳门特别行政区')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3527', N'811000', N'810000', N'马来西亚')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3528', N'810200', N'810000', N'印度尼西亚')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3529', N'810300', N'810000', N'泰国')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3530', N'810400', N'810000', N'菲律宾')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3531', N'810500', N'810000', N'新加坡')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3532', N'810600', N'810000', N'越南')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3533', N'810700', N'810000', N'缅甸')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3534', N'810800', N'810000', N'老挝')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3535', N'810900', N'810000', N'文莱')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3536', N'811000', N'810000', N'柬埔寨')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3537', N'811100', N'810000', N'东帝汶')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3538', N'820100', N'820000', N'伊朗')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3539', N'830000', null, N'大洋洲')
GO
GO
INSERT INTO [dbo].[JD_City] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3540', N'830100', N'830000', N'瓦努阿图')
GO
GO

-- ----------------------------
-- Table structure for JD_City_1
-- ----------------------------
DROP TABLE [dbo].[JD_City_1]
GO
CREATE TABLE [dbo].[JD_City_1] (
[id] int NOT NULL ,
[cityID] int NULL ,
[fatherID] int NULL DEFAULT ((0)) ,
[cityName] varchar(200) NULL 
)


GO

-- ----------------------------
-- Records of JD_City_1
-- ----------------------------
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1', N'110000', null, N'北京市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2', N'120000', null, N'天津市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3', N'130000', null, N'河北省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'4', N'140000', null, N'山西省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'5', N'150000', null, N'内蒙古自治区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'6', N'210000', null, N'辽宁省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'7', N'220000', null, N'吉林省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'8', N'230000', null, N'黑龙江省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'9', N'310000', null, N'上海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'10', N'320000', null, N'江苏省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'11', N'330000', null, N'浙江省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'12', N'340000', null, N'安徽省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'13', N'350000', null, N'福建省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'14', N'360000', null, N'江西省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'15', N'370000', null, N'山东省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'16', N'410000', null, N'河南省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'17', N'420000', null, N'湖北省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'18', N'430000', null, N'湖南省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'19', N'440000', null, N'广东省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'20', N'450000', null, N'广西壮族自治区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'21', N'460000', null, N'海南省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'22', N'500000', null, N'重庆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'23', N'510000', null, N'四川省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'24', N'520000', null, N'贵州省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'25', N'530000', null, N'云南省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'26', N'540000', null, N'西藏自治区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'27', N'610000', null, N'陕西省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'28', N'620000', null, N'甘肃省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'29', N'630000', null, N'青海省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'30', N'640000', null, N'宁夏回族自治区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'31', N'650000', null, N'新疆维吾尔自治区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'32', N'710000', null, N'台湾省')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'33', N'810000', null, N'香港特别行政区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'34', N'820000', null, N'澳门特别行政区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'35', N'110100', N'110000', N'北京市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'36', N'110200', N'110000', N'北京市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'37', N'120100', N'120000', N'天津市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'38', N'120200', N'120000', N'天津市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'39', N'130100', N'130000', N'石家庄市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'40', N'130200', N'130000', N'唐山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'41', N'130300', N'130000', N'秦皇岛市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'42', N'130400', N'130000', N'邯郸市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'43', N'130500', N'130000', N'邢台市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'44', N'130600', N'130000', N'保定市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'45', N'130700', N'130000', N'张家口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'46', N'130800', N'130000', N'承德市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'47', N'130900', N'130000', N'沧州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'48', N'131000', N'130000', N'廊坊市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'49', N'131100', N'130000', N'衡水市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'50', N'140100', N'140000', N'太原市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'51', N'140200', N'140000', N'大同市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'52', N'140300', N'140000', N'阳泉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'53', N'140400', N'140000', N'长治市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'54', N'140500', N'140000', N'晋城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'55', N'140600', N'140000', N'朔州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'56', N'140700', N'140000', N'晋中市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'57', N'140800', N'140000', N'运城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'58', N'140900', N'140000', N'忻州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'59', N'141000', N'140000', N'临汾市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'60', N'141100', N'140000', N'吕梁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'61', N'150100', N'150000', N'呼和浩特市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'62', N'150200', N'150000', N'包头市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'63', N'150300', N'150000', N'乌海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'64', N'150400', N'150000', N'赤峰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'65', N'150500', N'150000', N'通辽市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'66', N'150600', N'150000', N'鄂尔多斯市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'67', N'150700', N'150000', N'呼伦贝尔市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'68', N'150800', N'150000', N'巴彦淖尔市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'69', N'150900', N'150000', N'乌兰察布市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'70', N'152200', N'150000', N'兴安盟')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'71', N'152500', N'150000', N'锡林郭勒盟')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'72', N'152900', N'150000', N'阿拉善盟')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'73', N'210100', N'210000', N'沈阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'74', N'210200', N'210000', N'大连市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'75', N'210300', N'210000', N'鞍山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'76', N'210400', N'210000', N'抚顺市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'77', N'210500', N'210000', N'本溪市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'78', N'210600', N'210000', N'丹东市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'79', N'210700', N'210000', N'锦州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'80', N'210800', N'210000', N'营口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'81', N'210900', N'210000', N'阜新市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'82', N'211000', N'210000', N'辽阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'83', N'211100', N'210000', N'盘锦市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'84', N'211200', N'210000', N'铁岭市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'85', N'211300', N'210000', N'朝阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'86', N'211400', N'210000', N'葫芦岛市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'87', N'220100', N'220000', N'长春市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'88', N'220200', N'220000', N'吉林市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'89', N'220300', N'220000', N'四平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'90', N'220400', N'220000', N'辽源市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'91', N'220500', N'220000', N'通化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'92', N'220600', N'220000', N'白山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'93', N'220700', N'220000', N'松原市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'94', N'220800', N'220000', N'白城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'95', N'222400', N'220000', N'延边朝鲜族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'96', N'230100', N'230000', N'哈尔滨市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'97', N'230200', N'230000', N'齐齐哈尔市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'98', N'230300', N'230000', N'鸡西市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'99', N'230400', N'230000', N'鹤岗市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'100', N'230500', N'230000', N'双鸭山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'101', N'230600', N'230000', N'大庆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'102', N'230700', N'230000', N'伊春市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'103', N'230800', N'230000', N'佳木斯市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'104', N'230900', N'230000', N'七台河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'105', N'231000', N'230000', N'牡丹江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'106', N'231100', N'230000', N'黑河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'107', N'231200', N'230000', N'绥化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'108', N'232700', N'230000', N'大兴安岭地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'109', N'310100', N'310000', N'上海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'110', N'310200', N'310000', N'上海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'111', N'320100', N'320000', N'南京市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'112', N'320200', N'320000', N'无锡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'113', N'320300', N'320000', N'徐州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'114', N'320400', N'320000', N'常州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'115', N'320500', N'320000', N'苏州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'116', N'320600', N'320000', N'南通市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'117', N'320700', N'320000', N'连云港市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'118', N'320800', N'320000', N'淮安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'119', N'320900', N'320000', N'盐城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'120', N'321000', N'320000', N'扬州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'121', N'321100', N'320000', N'镇江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'122', N'321200', N'320000', N'泰州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'123', N'321300', N'320000', N'宿迁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'124', N'330100', N'330000', N'杭州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'125', N'330200', N'330000', N'宁波市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'126', N'330300', N'330000', N'温州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'127', N'330400', N'330000', N'嘉兴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'128', N'330500', N'330000', N'湖州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'129', N'330600', N'330000', N'绍兴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'130', N'330700', N'330000', N'金华市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'131', N'330800', N'330000', N'衢州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'132', N'330900', N'330000', N'舟山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'133', N'331000', N'330000', N'台州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'134', N'331100', N'330000', N'丽水市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'135', N'340100', N'340000', N'合肥市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'136', N'340200', N'340000', N'芜湖市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'137', N'340300', N'340000', N'蚌埠市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'138', N'340400', N'340000', N'淮南市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'139', N'340500', N'340000', N'马鞍山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'140', N'340600', N'340000', N'淮北市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'141', N'340700', N'340000', N'铜陵市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'142', N'340800', N'340000', N'安庆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'143', N'341000', N'340000', N'黄山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'144', N'341100', N'340000', N'滁州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'145', N'341200', N'340000', N'阜阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'146', N'341300', N'340000', N'宿州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'147', N'341400', N'340000', N'巢湖市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'148', N'341500', N'340000', N'六安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'149', N'341600', N'340000', N'亳州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'150', N'341700', N'340000', N'池州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'151', N'341800', N'340000', N'宣城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'152', N'350100', N'350000', N'福州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'153', N'350200', N'350000', N'厦门市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'154', N'350300', N'350000', N'莆田市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'155', N'350400', N'350000', N'三明市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'156', N'350500', N'350000', N'泉州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'157', N'350600', N'350000', N'漳州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'158', N'350700', N'350000', N'南平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'159', N'350800', N'350000', N'龙岩市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'160', N'350900', N'350000', N'宁德市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'161', N'360100', N'360000', N'南昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'162', N'360200', N'360000', N'景德镇市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'163', N'360300', N'360000', N'萍乡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'164', N'360400', N'360000', N'九江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'165', N'360500', N'360000', N'新余市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'166', N'360600', N'360000', N'鹰潭市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'167', N'360700', N'360000', N'赣州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'168', N'360800', N'360000', N'吉安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'169', N'360900', N'360000', N'宜春市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'170', N'361000', N'360000', N'抚州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'171', N'361100', N'360000', N'上饶市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'172', N'370100', N'370000', N'济南市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'173', N'370200', N'370000', N'青岛市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'174', N'370300', N'370000', N'淄博市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'175', N'370400', N'370000', N'枣庄市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'176', N'370500', N'370000', N'东营市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'177', N'370600', N'370000', N'烟台市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'178', N'370700', N'370000', N'潍坊市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'179', N'370800', N'370000', N'济宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'180', N'370900', N'370000', N'泰安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'181', N'371000', N'370000', N'威海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'182', N'371100', N'370000', N'日照市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'183', N'371200', N'370000', N'莱芜市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'184', N'371300', N'370000', N'临沂市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'185', N'371400', N'370000', N'德州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'186', N'371500', N'370000', N'聊城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'187', N'371600', N'370000', N'滨州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'188', N'371700', N'370000', N'荷泽市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'189', N'410100', N'410000', N'郑州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'190', N'410200', N'410000', N'开封市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'191', N'410300', N'410000', N'洛阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'192', N'410400', N'410000', N'平顶山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'193', N'410500', N'410000', N'安阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'194', N'410600', N'410000', N'鹤壁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'195', N'410700', N'410000', N'新乡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'196', N'410800', N'410000', N'焦作市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'197', N'410900', N'410000', N'濮阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'198', N'411000', N'410000', N'许昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'199', N'411100', N'410000', N'漯河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'200', N'411200', N'410000', N'三门峡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'201', N'411300', N'410000', N'南阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'202', N'411400', N'410000', N'商丘市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'203', N'411500', N'410000', N'信阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'204', N'411600', N'410000', N'周口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'205', N'411700', N'410000', N'驻马店市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'206', N'420100', N'420000', N'武汉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'207', N'420200', N'420000', N'黄石市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'208', N'420300', N'420000', N'十堰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'209', N'420500', N'420000', N'宜昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'210', N'420600', N'420000', N'襄樊市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'211', N'420700', N'420000', N'鄂州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'212', N'420800', N'420000', N'荆门市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'213', N'420900', N'420000', N'孝感市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'214', N'421000', N'420000', N'荆州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'215', N'421100', N'420000', N'黄冈市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'216', N'421200', N'420000', N'咸宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'217', N'421300', N'420000', N'随州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'218', N'422800', N'420000', N'恩施土家族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'219', N'429000', N'420000', N'省直辖行政单位')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'220', N'430100', N'430000', N'长沙市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'221', N'430200', N'430000', N'株洲市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'222', N'430300', N'430000', N'湘潭市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'223', N'430400', N'430000', N'衡阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'224', N'430500', N'430000', N'邵阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'225', N'430600', N'430000', N'岳阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'226', N'430700', N'430000', N'常德市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'227', N'430800', N'430000', N'张家界市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'228', N'430900', N'430000', N'益阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'229', N'431000', N'430000', N'郴州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'230', N'431100', N'430000', N'永州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'231', N'431200', N'430000', N'怀化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'232', N'431300', N'430000', N'娄底市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'233', N'433100', N'430000', N'湘西土家族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'234', N'440100', N'440000', N'广州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'235', N'440200', N'440000', N'韶关市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'236', N'440300', N'440000', N'深圳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'237', N'440400', N'440000', N'珠海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'238', N'440500', N'440000', N'汕头市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'239', N'440600', N'440000', N'佛山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'240', N'440700', N'440000', N'江门市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'241', N'440800', N'440000', N'湛江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'242', N'440900', N'440000', N'茂名市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'243', N'441200', N'440000', N'肇庆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'244', N'441300', N'440000', N'惠州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'245', N'441400', N'440000', N'梅州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'246', N'441500', N'440000', N'汕尾市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'247', N'441600', N'440000', N'河源市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'248', N'441700', N'440000', N'阳江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'249', N'441800', N'440000', N'清远市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'250', N'441900', N'440000', N'东莞市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'251', N'442000', N'440000', N'中山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'252', N'445100', N'440000', N'潮州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'253', N'445200', N'440000', N'揭阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'254', N'445300', N'440000', N'云浮市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'255', N'450100', N'450000', N'南宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'256', N'450200', N'450000', N'柳州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'257', N'450300', N'450000', N'桂林市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'258', N'450400', N'450000', N'梧州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'259', N'450500', N'450000', N'北海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'260', N'450600', N'450000', N'防城港市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'261', N'450700', N'450000', N'钦州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'262', N'450800', N'450000', N'贵港市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'263', N'450900', N'450000', N'玉林市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'264', N'451000', N'450000', N'百色市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'265', N'451100', N'450000', N'贺州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'266', N'451200', N'450000', N'河池市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'267', N'451300', N'450000', N'来宾市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'268', N'451400', N'450000', N'崇左市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'269', N'460100', N'460000', N'海口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'270', N'460200', N'460000', N'三亚市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'271', N'469000', N'460000', N'省直辖县级行政单位')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'272', N'500100', N'500000', N'重庆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'273', N'500200', N'500000', N'重庆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'274', N'500300', N'500000', N'重庆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'275', N'510100', N'510000', N'成都市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'276', N'510300', N'510000', N'自贡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'277', N'510400', N'510000', N'攀枝花市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'278', N'510500', N'510000', N'泸州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'279', N'510600', N'510000', N'德阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'280', N'510700', N'510000', N'绵阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'281', N'510800', N'510000', N'广元市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'282', N'510900', N'510000', N'遂宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'283', N'511000', N'510000', N'内江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'284', N'511100', N'510000', N'乐山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'285', N'511300', N'510000', N'南充市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'286', N'511400', N'510000', N'眉山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'287', N'511500', N'510000', N'宜宾市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'288', N'511600', N'510000', N'广安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'289', N'511700', N'510000', N'达州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'290', N'511800', N'510000', N'雅安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'291', N'511900', N'510000', N'巴中市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'292', N'512000', N'510000', N'资阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'293', N'513200', N'510000', N'阿坝藏族羌族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'294', N'513300', N'510000', N'甘孜藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'295', N'513400', N'510000', N'凉山彝族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'296', N'520100', N'520000', N'贵阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'297', N'520200', N'520000', N'六盘水市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'298', N'520300', N'520000', N'遵义市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'299', N'520400', N'520000', N'安顺市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'300', N'522200', N'520000', N'铜仁地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'301', N'522300', N'520000', N'黔西南布依族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'302', N'522400', N'520000', N'毕节地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'303', N'522600', N'520000', N'黔东南苗族侗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'304', N'522700', N'520000', N'黔南布依族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'305', N'530100', N'530000', N'昆明市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'306', N'530300', N'530000', N'曲靖市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'307', N'530400', N'530000', N'玉溪市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'308', N'530500', N'530000', N'保山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'309', N'530600', N'530000', N'昭通市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'310', N'530700', N'530000', N'丽江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'311', N'530800', N'530000', N'思茅市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'312', N'530900', N'530000', N'临沧市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'313', N'532300', N'530000', N'楚雄彝族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'314', N'532500', N'530000', N'红河哈尼族彝族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'315', N'532600', N'530000', N'文山壮族苗族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'316', N'532800', N'530000', N'西双版纳傣族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'317', N'532900', N'530000', N'大理白族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'318', N'533100', N'530000', N'德宏傣族景颇族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'319', N'533300', N'530000', N'怒江傈僳族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'320', N'533400', N'530000', N'迪庆藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'321', N'540100', N'540000', N'拉萨市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'322', N'542100', N'540000', N'昌都地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'323', N'542200', N'540000', N'山南地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'324', N'542300', N'540000', N'日喀则地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'325', N'542400', N'540000', N'那曲地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'326', N'542500', N'540000', N'阿里地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'327', N'542600', N'540000', N'林芝地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'328', N'610100', N'610000', N'西安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'329', N'610200', N'610000', N'铜川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'330', N'610300', N'610000', N'宝鸡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'331', N'610400', N'610000', N'咸阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'332', N'610500', N'610000', N'渭南市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'333', N'610600', N'610000', N'延安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'334', N'610700', N'610000', N'汉中市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'335', N'610800', N'610000', N'榆林市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'336', N'610900', N'610000', N'安康市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'337', N'611000', N'610000', N'商洛市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'338', N'620100', N'620000', N'兰州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'339', N'620200', N'620000', N'嘉峪关市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'340', N'620300', N'620000', N'金昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'341', N'620400', N'620000', N'白银市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'342', N'620500', N'620000', N'天水市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'343', N'620600', N'620000', N'武威市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'344', N'620700', N'620000', N'张掖市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'345', N'620800', N'620000', N'平凉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'346', N'620900', N'620000', N'酒泉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'347', N'621000', N'620000', N'庆阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'348', N'621100', N'620000', N'定西市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'349', N'621200', N'620000', N'陇南市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'350', N'622900', N'620000', N'临夏回族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'351', N'623000', N'620000', N'甘南藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'352', N'630100', N'630000', N'西宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'353', N'632100', N'630000', N'海东地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'354', N'632200', N'630000', N'海北藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'355', N'632300', N'630000', N'黄南藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'356', N'632500', N'630000', N'海南藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'357', N'632600', N'630000', N'果洛藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'358', N'632700', N'630000', N'玉树藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'359', N'632800', N'630000', N'海西蒙古族藏族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'360', N'640100', N'640000', N'银川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'361', N'640200', N'640000', N'石嘴山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'362', N'640300', N'640000', N'吴忠市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'363', N'640400', N'640000', N'固原市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'364', N'640500', N'640000', N'中卫市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'365', N'650100', N'650000', N'乌鲁木齐市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'366', N'650200', N'650000', N'克拉玛依市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'367', N'652100', N'650000', N'吐鲁番地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'368', N'652200', N'650000', N'哈密地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'369', N'652300', N'650000', N'昌吉回族自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'370', N'652700', N'650000', N'博尔塔拉蒙古自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'371', N'652800', N'650000', N'巴音郭楞蒙古自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'372', N'652900', N'650000', N'阿克苏地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'373', N'653000', N'650000', N'克孜勒苏柯尔克孜自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'374', N'653100', N'650000', N'喀什地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'375', N'653200', N'650000', N'和田地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'376', N'654000', N'650000', N'伊犁哈萨克自治州')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'377', N'654200', N'650000', N'塔城地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'378', N'654300', N'650000', N'阿勒泰地区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'379', N'659000', N'650000', N'省直辖行政单位')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'380', N'110101', N'110100', N'东城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'381', N'110102', N'110100', N'西城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'382', N'110103', N'110100', N'崇文区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'383', N'110104', N'110100', N'宣武区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'384', N'110105', N'110100', N'朝阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'385', N'110106', N'110100', N'丰台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'386', N'110107', N'110100', N'石景山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'387', N'110108', N'110100', N'海淀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'388', N'110109', N'110100', N'门头沟区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'389', N'110111', N'110100', N'房山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'390', N'110112', N'110100', N'通州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'391', N'110113', N'110100', N'顺义区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'392', N'110114', N'110100', N'昌平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'393', N'110115', N'110100', N'大兴区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'394', N'110116', N'110100', N'怀柔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'395', N'110117', N'110100', N'平谷区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'396', N'110228', N'110200', N'密云县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'397', N'110229', N'110200', N'延庆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'398', N'120101', N'120100', N'和平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'399', N'120102', N'120100', N'河东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'400', N'120103', N'120100', N'河西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'401', N'120104', N'120100', N'南开区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'402', N'120105', N'120100', N'河北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'403', N'120106', N'120100', N'红桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'404', N'120107', N'120100', N'塘沽区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'405', N'120108', N'120100', N'汉沽区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'406', N'120109', N'120100', N'大港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'407', N'120110', N'120100', N'东丽区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'408', N'120111', N'120100', N'西青区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'409', N'120112', N'120100', N'津南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'410', N'120113', N'120100', N'北辰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'411', N'120114', N'120100', N'武清区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'412', N'120115', N'120100', N'宝坻区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'413', N'120221', N'120200', N'宁河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'414', N'120223', N'120200', N'静海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'415', N'120225', N'120200', N'蓟　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'416', N'130101', N'130100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'417', N'130102', N'130100', N'长安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'418', N'130103', N'130100', N'桥东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'419', N'130104', N'130100', N'桥西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'420', N'130105', N'130100', N'新华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'421', N'130107', N'130100', N'井陉矿区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'422', N'130108', N'130100', N'裕华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'423', N'130121', N'130100', N'井陉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'424', N'130123', N'130100', N'正定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'425', N'130124', N'130100', N'栾城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'426', N'130125', N'130100', N'行唐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'427', N'130126', N'130100', N'灵寿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'428', N'130127', N'130100', N'高邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'429', N'130128', N'130100', N'深泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'430', N'130129', N'130100', N'赞皇县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'431', N'130130', N'130100', N'无极县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'432', N'130131', N'130100', N'平山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'433', N'130132', N'130100', N'元氏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'434', N'130133', N'130100', N'赵　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'435', N'130181', N'130100', N'辛集市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'436', N'130182', N'130100', N'藁城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'437', N'130183', N'130100', N'晋州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'438', N'130184', N'130100', N'新乐市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'439', N'130185', N'130100', N'鹿泉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'440', N'130201', N'130200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'441', N'130202', N'130200', N'路南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'442', N'130203', N'130200', N'路北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'443', N'130204', N'130200', N'古冶区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'444', N'130205', N'130200', N'开平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'445', N'130207', N'130200', N'丰南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'446', N'130208', N'130200', N'丰润区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'447', N'130223', N'130200', N'滦　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'448', N'130224', N'130200', N'滦南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'449', N'130225', N'130200', N'乐亭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'450', N'130227', N'130200', N'迁西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'451', N'130229', N'130200', N'玉田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'452', N'130230', N'130200', N'唐海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'453', N'130281', N'130200', N'遵化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'454', N'130283', N'130200', N'迁安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'455', N'130301', N'130300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'456', N'130302', N'130300', N'海港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'457', N'130303', N'130300', N'山海关区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'458', N'130304', N'130300', N'北戴河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'459', N'130321', N'130300', N'青龙满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'460', N'130322', N'130300', N'昌黎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'461', N'130323', N'130300', N'抚宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'462', N'130324', N'130300', N'卢龙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'463', N'130401', N'130400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'464', N'130402', N'130400', N'邯山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'465', N'130403', N'130400', N'丛台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'466', N'130404', N'130400', N'复兴区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'467', N'130406', N'130400', N'峰峰矿区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'468', N'130421', N'130400', N'邯郸县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'469', N'130423', N'130400', N'临漳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'470', N'130424', N'130400', N'成安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'471', N'130425', N'130400', N'大名县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'472', N'130426', N'130400', N'涉　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'473', N'130427', N'130400', N'磁　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'474', N'130428', N'130400', N'肥乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'475', N'130429', N'130400', N'永年县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'476', N'130430', N'130400', N'邱　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'477', N'130431', N'130400', N'鸡泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'478', N'130432', N'130400', N'广平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'479', N'130433', N'130400', N'馆陶县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'480', N'130434', N'130400', N'魏　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'481', N'130435', N'130400', N'曲周县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'482', N'130481', N'130400', N'武安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'483', N'130501', N'130500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'484', N'130502', N'130500', N'桥东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'485', N'130503', N'130500', N'桥西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'486', N'130521', N'130500', N'邢台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'487', N'130522', N'130500', N'临城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'488', N'130523', N'130500', N'内丘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'489', N'130524', N'130500', N'柏乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'490', N'130525', N'130500', N'隆尧县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'491', N'130526', N'130500', N'任　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'492', N'130527', N'130500', N'南和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'493', N'130528', N'130500', N'宁晋县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'494', N'130529', N'130500', N'巨鹿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'495', N'130530', N'130500', N'新河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'496', N'130531', N'130500', N'广宗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'497', N'130532', N'130500', N'平乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'498', N'130533', N'130500', N'威　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'499', N'130534', N'130500', N'清河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'500', N'130535', N'130500', N'临西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'501', N'130581', N'130500', N'南宫市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'502', N'130582', N'130500', N'沙河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'503', N'130601', N'130600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'504', N'130602', N'130600', N'新市区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'505', N'130603', N'130600', N'北市区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'506', N'130604', N'130600', N'南市区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'507', N'130621', N'130600', N'满城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'508', N'130622', N'130600', N'清苑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'509', N'130623', N'130600', N'涞水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'510', N'130624', N'130600', N'阜平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'511', N'130625', N'130600', N'徐水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'512', N'130626', N'130600', N'定兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'513', N'130627', N'130600', N'唐　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'514', N'130628', N'130600', N'高阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'515', N'130629', N'130600', N'容城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'516', N'130630', N'130600', N'涞源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'517', N'130631', N'130600', N'望都县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'518', N'130632', N'130600', N'安新县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'519', N'130633', N'130600', N'易　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'520', N'130634', N'130600', N'曲阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'521', N'130635', N'130600', N'蠡　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'522', N'130636', N'130600', N'顺平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'523', N'130637', N'130600', N'博野县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'524', N'130638', N'130600', N'雄　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'525', N'130681', N'130600', N'涿州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'526', N'130682', N'130600', N'定州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'527', N'130683', N'130600', N'安国市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'528', N'130684', N'130600', N'高碑店市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'529', N'130701', N'130700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'530', N'130702', N'130700', N'桥东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'531', N'130703', N'130700', N'桥西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'532', N'130705', N'130700', N'宣化区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'533', N'130706', N'130700', N'下花园区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'534', N'130721', N'130700', N'宣化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'535', N'130722', N'130700', N'张北县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'536', N'130723', N'130700', N'康保县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'537', N'130724', N'130700', N'沽源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'538', N'130725', N'130700', N'尚义县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'539', N'130726', N'130700', N'蔚　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'540', N'130727', N'130700', N'阳原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'541', N'130728', N'130700', N'怀安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'542', N'130729', N'130700', N'万全县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'543', N'130730', N'130700', N'怀来县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'544', N'130731', N'130700', N'涿鹿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'545', N'130732', N'130700', N'赤城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'546', N'130733', N'130700', N'崇礼县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'547', N'130801', N'130800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'548', N'130802', N'130800', N'双桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'549', N'130803', N'130800', N'双滦区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'550', N'130804', N'130800', N'鹰手营子矿区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'551', N'130821', N'130800', N'承德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'552', N'130822', N'130800', N'兴隆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'553', N'130823', N'130800', N'平泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'554', N'130824', N'130800', N'滦平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'555', N'130825', N'130800', N'隆化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'556', N'130826', N'130800', N'丰宁满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'557', N'130827', N'130800', N'宽城满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'558', N'130828', N'130800', N'围场满族蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'559', N'130901', N'130900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'560', N'130902', N'130900', N'新华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'561', N'130903', N'130900', N'运河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'562', N'130921', N'130900', N'沧　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'563', N'130922', N'130900', N'青　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'564', N'130923', N'130900', N'东光县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'565', N'130924', N'130900', N'海兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'566', N'130925', N'130900', N'盐山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'567', N'130926', N'130900', N'肃宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'568', N'130927', N'130900', N'南皮县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'569', N'130928', N'130900', N'吴桥县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'570', N'130929', N'130900', N'献　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'571', N'130930', N'130900', N'孟村回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'572', N'130981', N'130900', N'泊头市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'573', N'130982', N'130900', N'任丘市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'574', N'130983', N'130900', N'黄骅市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'575', N'130984', N'130900', N'河间市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'576', N'131001', N'131000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'577', N'131002', N'131000', N'安次区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'578', N'131003', N'131000', N'广阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'579', N'131022', N'131000', N'固安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'580', N'131023', N'131000', N'永清县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'581', N'131024', N'131000', N'香河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'582', N'131025', N'131000', N'大城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'583', N'131026', N'131000', N'文安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'584', N'131028', N'131000', N'大厂回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'585', N'131081', N'131000', N'霸州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'586', N'131082', N'131000', N'三河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'587', N'131101', N'131100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'588', N'131102', N'131100', N'桃城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'589', N'131121', N'131100', N'枣强县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'590', N'131122', N'131100', N'武邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'591', N'131123', N'131100', N'武强县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'592', N'131124', N'131100', N'饶阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'593', N'131125', N'131100', N'安平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'594', N'131126', N'131100', N'故城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'595', N'131127', N'131100', N'景　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'596', N'131128', N'131100', N'阜城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'597', N'131181', N'131100', N'冀州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'598', N'131182', N'131100', N'深州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'599', N'140101', N'140100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'600', N'140105', N'140100', N'小店区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'601', N'140106', N'140100', N'迎泽区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'602', N'140107', N'140100', N'杏花岭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'603', N'140108', N'140100', N'尖草坪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'604', N'140109', N'140100', N'万柏林区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'605', N'140110', N'140100', N'晋源区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'606', N'140121', N'140100', N'清徐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'607', N'140122', N'140100', N'阳曲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'608', N'140123', N'140100', N'娄烦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'609', N'140181', N'140100', N'古交市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'610', N'140201', N'140200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'611', N'140202', N'140200', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'612', N'140203', N'140200', N'矿　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'613', N'140211', N'140200', N'南郊区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'614', N'140212', N'140200', N'新荣区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'615', N'140221', N'140200', N'阳高县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'616', N'140222', N'140200', N'天镇县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'617', N'140223', N'140200', N'广灵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'618', N'140224', N'140200', N'灵丘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'619', N'140225', N'140200', N'浑源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'620', N'140226', N'140200', N'左云县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'621', N'140227', N'140200', N'大同县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'622', N'140301', N'140300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'623', N'140302', N'140300', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'624', N'140303', N'140300', N'矿　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'625', N'140311', N'140300', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'626', N'140321', N'140300', N'平定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'627', N'140322', N'140300', N'盂　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'628', N'140401', N'140400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'629', N'140402', N'140400', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'630', N'140411', N'140400', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'631', N'140421', N'140400', N'长治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'632', N'140423', N'140400', N'襄垣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'633', N'140424', N'140400', N'屯留县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'634', N'140425', N'140400', N'平顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'635', N'140426', N'140400', N'黎城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'636', N'140427', N'140400', N'壶关县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'637', N'140428', N'140400', N'长子县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'638', N'140429', N'140400', N'武乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'639', N'140430', N'140400', N'沁　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'640', N'140431', N'140400', N'沁源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'641', N'140481', N'140400', N'潞城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'642', N'140501', N'140500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'643', N'140502', N'140500', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'644', N'140521', N'140500', N'沁水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'645', N'140522', N'140500', N'阳城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'646', N'140524', N'140500', N'陵川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'647', N'140525', N'140500', N'泽州县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'648', N'140581', N'140500', N'高平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'649', N'140601', N'140600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'650', N'140602', N'140600', N'朔城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'651', N'140603', N'140600', N'平鲁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'652', N'140621', N'140600', N'山阴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'653', N'140622', N'140600', N'应　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'654', N'140623', N'140600', N'右玉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'655', N'140624', N'140600', N'怀仁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'656', N'140701', N'140700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'657', N'140702', N'140700', N'榆次区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'658', N'140721', N'140700', N'榆社县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'659', N'140722', N'140700', N'左权县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'660', N'140723', N'140700', N'和顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'661', N'140724', N'140700', N'昔阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'662', N'140725', N'140700', N'寿阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'663', N'140726', N'140700', N'太谷县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'664', N'140727', N'140700', N'祁　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'665', N'140728', N'140700', N'平遥县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'666', N'140729', N'140700', N'灵石县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'667', N'140781', N'140700', N'介休市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'668', N'140801', N'140800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'669', N'140802', N'140800', N'盐湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'670', N'140821', N'140800', N'临猗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'671', N'140822', N'140800', N'万荣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'672', N'140823', N'140800', N'闻喜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'673', N'140824', N'140800', N'稷山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'674', N'140825', N'140800', N'新绛县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'675', N'140826', N'140800', N'绛　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'676', N'140827', N'140800', N'垣曲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'677', N'140828', N'140800', N'夏　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'678', N'140829', N'140800', N'平陆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'679', N'140830', N'140800', N'芮城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'680', N'140881', N'140800', N'永济市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'681', N'140882', N'140800', N'河津市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'682', N'140901', N'140900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'683', N'140902', N'140900', N'忻府区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'684', N'140921', N'140900', N'定襄县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'685', N'140922', N'140900', N'五台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'686', N'140923', N'140900', N'代　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'687', N'140924', N'140900', N'繁峙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'688', N'140925', N'140900', N'宁武县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'689', N'140926', N'140900', N'静乐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'690', N'140927', N'140900', N'神池县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'691', N'140928', N'140900', N'五寨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'692', N'140929', N'140900', N'岢岚县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'693', N'140930', N'140900', N'河曲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'694', N'140931', N'140900', N'保德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'695', N'140932', N'140900', N'偏关县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'696', N'140981', N'140900', N'原平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'697', N'141001', N'141000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'698', N'141002', N'141000', N'尧都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'699', N'141021', N'141000', N'曲沃县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'700', N'141022', N'141000', N'翼城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'701', N'141023', N'141000', N'襄汾县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'702', N'141024', N'141000', N'洪洞县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'703', N'141025', N'141000', N'古　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'704', N'141026', N'141000', N'安泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'705', N'141027', N'141000', N'浮山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'706', N'141028', N'141000', N'吉　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'707', N'141029', N'141000', N'乡宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'708', N'141030', N'141000', N'大宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'709', N'141031', N'141000', N'隰　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'710', N'141032', N'141000', N'永和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'711', N'141033', N'141000', N'蒲　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'712', N'141034', N'141000', N'汾西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'713', N'141081', N'141000', N'侯马市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'714', N'141082', N'141000', N'霍州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'715', N'141101', N'141100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'716', N'141102', N'141100', N'离石区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'717', N'141121', N'141100', N'文水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'718', N'141122', N'141100', N'交城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'719', N'141123', N'141100', N'兴　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'720', N'141124', N'141100', N'临　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'721', N'141125', N'141100', N'柳林县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'722', N'141126', N'141100', N'石楼县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'723', N'141127', N'141100', N'岚　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'724', N'141128', N'141100', N'方山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'725', N'141129', N'141100', N'中阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'726', N'141130', N'141100', N'交口县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'727', N'141181', N'141100', N'孝义市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'728', N'141182', N'141100', N'汾阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'729', N'150101', N'150100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'730', N'150102', N'150100', N'新城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'731', N'150103', N'150100', N'回民区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'732', N'150104', N'150100', N'玉泉区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'733', N'150105', N'150100', N'赛罕区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'734', N'150121', N'150100', N'土默特左旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'735', N'150122', N'150100', N'托克托县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'736', N'150123', N'150100', N'和林格尔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'737', N'150124', N'150100', N'清水河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'738', N'150125', N'150100', N'武川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'739', N'150201', N'150200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'740', N'150202', N'150200', N'东河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'741', N'150203', N'150200', N'昆都仑区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'742', N'150204', N'150200', N'青山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'743', N'150205', N'150200', N'石拐区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'744', N'150206', N'150200', N'白云矿区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'745', N'150207', N'150200', N'九原区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'746', N'150221', N'150200', N'土默特右旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'747', N'150222', N'150200', N'固阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'748', N'150223', N'150200', N'达尔罕茂明安联合旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'749', N'150301', N'150300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'750', N'150302', N'150300', N'海勃湾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'751', N'150303', N'150300', N'海南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'752', N'150304', N'150300', N'乌达区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'753', N'150401', N'150400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'754', N'150402', N'150400', N'红山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'755', N'150403', N'150400', N'元宝山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'756', N'150404', N'150400', N'松山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'757', N'150421', N'150400', N'阿鲁科尔沁旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'758', N'150422', N'150400', N'巴林左旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'759', N'150423', N'150400', N'巴林右旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'760', N'150424', N'150400', N'林西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'761', N'150425', N'150400', N'克什克腾旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'762', N'150426', N'150400', N'翁牛特旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'763', N'150428', N'150400', N'喀喇沁旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'764', N'150429', N'150400', N'宁城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'765', N'150430', N'150400', N'敖汉旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'766', N'150501', N'150500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'767', N'150502', N'150500', N'科尔沁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'768', N'150521', N'150500', N'科尔沁左翼中旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'769', N'150522', N'150500', N'科尔沁左翼后旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'770', N'150523', N'150500', N'开鲁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'771', N'150524', N'150500', N'库伦旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'772', N'150525', N'150500', N'奈曼旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'773', N'150526', N'150500', N'扎鲁特旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'774', N'150581', N'150500', N'霍林郭勒市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'775', N'150602', N'150600', N'东胜区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'776', N'150621', N'150600', N'达拉特旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'777', N'150622', N'150600', N'准格尔旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'778', N'150623', N'150600', N'鄂托克前旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'779', N'150624', N'150600', N'鄂托克旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'780', N'150625', N'150600', N'杭锦旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'781', N'150626', N'150600', N'乌审旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'782', N'150627', N'150600', N'伊金霍洛旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'783', N'150701', N'150700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'784', N'150702', N'150700', N'海拉尔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'785', N'150721', N'150700', N'阿荣旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'786', N'150722', N'150700', N'莫力达瓦达斡尔族自治旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'787', N'150723', N'150700', N'鄂伦春自治旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'788', N'150724', N'150700', N'鄂温克族自治旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'789', N'150725', N'150700', N'陈巴尔虎旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'790', N'150726', N'150700', N'新巴尔虎左旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'791', N'150727', N'150700', N'新巴尔虎右旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'792', N'150781', N'150700', N'满洲里市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'793', N'150782', N'150700', N'牙克石市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'794', N'150783', N'150700', N'扎兰屯市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'795', N'150784', N'150700', N'额尔古纳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'796', N'150785', N'150700', N'根河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'797', N'150801', N'150800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'798', N'150802', N'150800', N'临河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'799', N'150821', N'150800', N'五原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'800', N'150822', N'150800', N'磴口县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'801', N'150823', N'150800', N'乌拉特前旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'802', N'150824', N'150800', N'乌拉特中旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'803', N'150825', N'150800', N'乌拉特后旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'804', N'150826', N'150800', N'杭锦后旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'805', N'150901', N'150900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'806', N'150902', N'150900', N'集宁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'807', N'150921', N'150900', N'卓资县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'808', N'150922', N'150900', N'化德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'809', N'150923', N'150900', N'商都县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'810', N'150924', N'150900', N'兴和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'811', N'150925', N'150900', N'凉城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'812', N'150926', N'150900', N'察哈尔右翼前旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'813', N'150927', N'150900', N'察哈尔右翼中旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'814', N'150928', N'150900', N'察哈尔右翼后旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'815', N'150929', N'150900', N'四子王旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'816', N'150981', N'150900', N'丰镇市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'817', N'152201', N'152200', N'乌兰浩特市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'818', N'152202', N'152200', N'阿尔山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'819', N'152221', N'152200', N'科尔沁右翼前旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'820', N'152222', N'152200', N'科尔沁右翼中旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'821', N'152223', N'152200', N'扎赉特旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'822', N'152224', N'152200', N'突泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'823', N'152501', N'152500', N'二连浩特市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'824', N'152502', N'152500', N'锡林浩特市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'825', N'152522', N'152500', N'阿巴嘎旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'826', N'152523', N'152500', N'苏尼特左旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'827', N'152524', N'152500', N'苏尼特右旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'828', N'152525', N'152500', N'东乌珠穆沁旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'829', N'152526', N'152500', N'西乌珠穆沁旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'830', N'152527', N'152500', N'太仆寺旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'831', N'152528', N'152500', N'镶黄旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'832', N'152529', N'152500', N'正镶白旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'833', N'152530', N'152500', N'正蓝旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'834', N'152531', N'152500', N'多伦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'835', N'152921', N'152900', N'阿拉善左旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'836', N'152922', N'152900', N'阿拉善右旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'837', N'152923', N'152900', N'额济纳旗')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'838', N'210101', N'210100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'839', N'210102', N'210100', N'和平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'840', N'210103', N'210100', N'沈河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'841', N'210104', N'210100', N'大东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'842', N'210105', N'210100', N'皇姑区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'843', N'210106', N'210100', N'铁西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'844', N'210111', N'210100', N'苏家屯区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'845', N'210112', N'210100', N'东陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'846', N'210113', N'210100', N'新城子区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'847', N'210114', N'210100', N'于洪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'848', N'210122', N'210100', N'辽中县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'849', N'210123', N'210100', N'康平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'850', N'210124', N'210100', N'法库县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'851', N'210181', N'210100', N'新民市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'852', N'210201', N'210200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'853', N'210202', N'210200', N'中山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'854', N'210203', N'210200', N'西岗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'855', N'210204', N'210200', N'沙河口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'856', N'210211', N'210200', N'甘井子区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'857', N'210212', N'210200', N'旅顺口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'858', N'210213', N'210200', N'金州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'859', N'210224', N'210200', N'长海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'860', N'210281', N'210200', N'瓦房店市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'861', N'210282', N'210200', N'普兰店市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'862', N'210283', N'210200', N'庄河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'863', N'210301', N'210300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'864', N'210302', N'210300', N'铁东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'865', N'210303', N'210300', N'铁西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'866', N'210304', N'210300', N'立山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'867', N'210311', N'210300', N'千山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'868', N'210321', N'210300', N'台安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'869', N'210323', N'210300', N'岫岩满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'870', N'210381', N'210300', N'海城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'871', N'210401', N'210400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'872', N'210402', N'210400', N'新抚区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'873', N'210403', N'210400', N'东洲区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'874', N'210404', N'210400', N'望花区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'875', N'210411', N'210400', N'顺城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'876', N'210421', N'210400', N'抚顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'877', N'210422', N'210400', N'新宾满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'878', N'210423', N'210400', N'清原满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'879', N'210501', N'210500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'880', N'210502', N'210500', N'平山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'881', N'210503', N'210500', N'溪湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'882', N'210504', N'210500', N'明山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'883', N'210505', N'210500', N'南芬区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'884', N'210521', N'210500', N'本溪满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'885', N'210522', N'210500', N'桓仁满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'886', N'210601', N'210600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'887', N'210602', N'210600', N'元宝区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'888', N'210603', N'210600', N'振兴区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'889', N'210604', N'210600', N'振安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'890', N'210624', N'210600', N'宽甸满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'891', N'210681', N'210600', N'东港市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'892', N'210682', N'210600', N'凤城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'893', N'210701', N'210700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'894', N'210702', N'210700', N'古塔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'895', N'210703', N'210700', N'凌河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'896', N'210711', N'210700', N'太和区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'897', N'210726', N'210700', N'黑山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'898', N'210727', N'210700', N'义　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'899', N'210781', N'210700', N'凌海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'900', N'210782', N'210700', N'北宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'901', N'210801', N'210800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'902', N'210802', N'210800', N'站前区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'903', N'210803', N'210800', N'西市区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'904', N'210804', N'210800', N'鲅鱼圈区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'905', N'210811', N'210800', N'老边区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'906', N'210881', N'210800', N'盖州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'907', N'210882', N'210800', N'大石桥市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'908', N'210901', N'210900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'909', N'210902', N'210900', N'海州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'910', N'210903', N'210900', N'新邱区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'911', N'210904', N'210900', N'太平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'912', N'210905', N'210900', N'清河门区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'913', N'210911', N'210900', N'细河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'914', N'210921', N'210900', N'阜新蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'915', N'210922', N'210900', N'彰武县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'916', N'211001', N'211000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'917', N'211002', N'211000', N'白塔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'918', N'211003', N'211000', N'文圣区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'919', N'211004', N'211000', N'宏伟区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'920', N'211005', N'211000', N'弓长岭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'921', N'211011', N'211000', N'太子河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'922', N'211021', N'211000', N'辽阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'923', N'211081', N'211000', N'灯塔市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'924', N'211101', N'211100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'925', N'211102', N'211100', N'双台子区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'926', N'211103', N'211100', N'兴隆台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'927', N'211121', N'211100', N'大洼县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'928', N'211122', N'211100', N'盘山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'929', N'211201', N'211200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'930', N'211202', N'211200', N'银州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'931', N'211204', N'211200', N'清河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'932', N'211221', N'211200', N'铁岭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'933', N'211223', N'211200', N'西丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'934', N'211224', N'211200', N'昌图县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'935', N'211281', N'211200', N'调兵山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'936', N'211282', N'211200', N'开原市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'937', N'211301', N'211300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'938', N'211302', N'211300', N'双塔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'939', N'211303', N'211300', N'龙城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'940', N'211321', N'211300', N'朝阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'941', N'211322', N'211300', N'建平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'942', N'211324', N'211300', N'喀喇沁左翼蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'943', N'211381', N'211300', N'北票市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'944', N'211382', N'211300', N'凌源市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'945', N'211401', N'211400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'946', N'211402', N'211400', N'连山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'947', N'211403', N'211400', N'龙港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'948', N'211404', N'211400', N'南票区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'949', N'211421', N'211400', N'绥中县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'950', N'211422', N'211400', N'建昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'951', N'211481', N'211400', N'兴城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'952', N'220101', N'220100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'953', N'220102', N'220100', N'南关区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'954', N'220103', N'220100', N'宽城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'955', N'220104', N'220100', N'朝阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'956', N'220105', N'220100', N'二道区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'957', N'220106', N'220100', N'绿园区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'958', N'220112', N'220100', N'双阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'959', N'220122', N'220100', N'农安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'960', N'220181', N'220100', N'九台市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'961', N'220182', N'220100', N'榆树市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'962', N'220183', N'220100', N'德惠市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'963', N'220201', N'220200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'964', N'220202', N'220200', N'昌邑区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'965', N'220203', N'220200', N'龙潭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'966', N'220204', N'220200', N'船营区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'967', N'220211', N'220200', N'丰满区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'968', N'220221', N'220200', N'永吉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'969', N'220281', N'220200', N'蛟河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'970', N'220282', N'220200', N'桦甸市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'971', N'220283', N'220200', N'舒兰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'972', N'220284', N'220200', N'磐石市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'973', N'220301', N'220300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'974', N'220302', N'220300', N'铁西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'975', N'220303', N'220300', N'铁东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'976', N'220322', N'220300', N'梨树县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'977', N'220323', N'220300', N'伊通满族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'978', N'220381', N'220300', N'公主岭市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'979', N'220382', N'220300', N'双辽市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'980', N'220401', N'220400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'981', N'220402', N'220400', N'龙山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'982', N'220403', N'220400', N'西安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'983', N'220421', N'220400', N'东丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'984', N'220422', N'220400', N'东辽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'985', N'220501', N'220500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'986', N'220502', N'220500', N'东昌区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'987', N'220503', N'220500', N'二道江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'988', N'220521', N'220500', N'通化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'989', N'220523', N'220500', N'辉南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'990', N'220524', N'220500', N'柳河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'991', N'220581', N'220500', N'梅河口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'992', N'220582', N'220500', N'集安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'993', N'220601', N'220600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'994', N'220602', N'220600', N'八道江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'995', N'220621', N'220600', N'抚松县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'996', N'220622', N'220600', N'靖宇县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'997', N'220623', N'220600', N'长白朝鲜族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'998', N'220625', N'220600', N'江源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'999', N'220681', N'220600', N'临江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1000', N'220701', N'220700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1001', N'220702', N'220700', N'宁江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1002', N'220721', N'220700', N'前郭尔罗斯蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1003', N'220722', N'220700', N'长岭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1004', N'220723', N'220700', N'乾安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1005', N'220724', N'220700', N'扶余县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1006', N'220801', N'220800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1007', N'220802', N'220800', N'洮北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1008', N'220821', N'220800', N'镇赉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1009', N'220822', N'220800', N'通榆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1010', N'220881', N'220800', N'洮南市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1011', N'220882', N'220800', N'大安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1012', N'222401', N'222400', N'延吉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1013', N'222402', N'222400', N'图们市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1014', N'222403', N'222400', N'敦化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1015', N'222404', N'222400', N'珲春市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1016', N'222405', N'222400', N'龙井市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1017', N'222406', N'222400', N'和龙市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1018', N'222424', N'222400', N'汪清县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1019', N'222426', N'222400', N'安图县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1020', N'230101', N'230100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1021', N'230102', N'230100', N'道里区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1022', N'230103', N'230100', N'南岗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1023', N'230104', N'230100', N'道外区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1024', N'230106', N'230100', N'香坊区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1025', N'230107', N'230100', N'动力区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1026', N'230108', N'230100', N'平房区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1027', N'230109', N'230100', N'松北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1028', N'230111', N'230100', N'呼兰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1029', N'230123', N'230100', N'依兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1030', N'230124', N'230100', N'方正县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1031', N'230125', N'230100', N'宾　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1032', N'230126', N'230100', N'巴彦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1033', N'230127', N'230100', N'木兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1034', N'230128', N'230100', N'通河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1035', N'230129', N'230100', N'延寿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1036', N'230181', N'230100', N'阿城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1037', N'230182', N'230100', N'双城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1038', N'230183', N'230100', N'尚志市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1039', N'230184', N'230100', N'五常市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1040', N'230201', N'230200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1041', N'230202', N'230200', N'龙沙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1042', N'230203', N'230200', N'建华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1043', N'230204', N'230200', N'铁锋区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1044', N'230205', N'230200', N'昂昂溪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1045', N'230206', N'230200', N'富拉尔基区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1046', N'230207', N'230200', N'碾子山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1047', N'230208', N'230200', N'梅里斯达斡尔族区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1048', N'230221', N'230200', N'龙江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1049', N'230223', N'230200', N'依安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1050', N'230224', N'230200', N'泰来县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1051', N'230225', N'230200', N'甘南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1052', N'230227', N'230200', N'富裕县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1053', N'230229', N'230200', N'克山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1054', N'230230', N'230200', N'克东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1055', N'230231', N'230200', N'拜泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1056', N'230281', N'230200', N'讷河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1057', N'230301', N'230300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1058', N'230302', N'230300', N'鸡冠区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1059', N'230303', N'230300', N'恒山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1060', N'230304', N'230300', N'滴道区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1061', N'230305', N'230300', N'梨树区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1062', N'230306', N'230300', N'城子河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1063', N'230307', N'230300', N'麻山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1064', N'230321', N'230300', N'鸡东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1065', N'230381', N'230300', N'虎林市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1066', N'230382', N'230300', N'密山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1067', N'230401', N'230400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1068', N'230402', N'230400', N'向阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1069', N'230403', N'230400', N'工农区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1070', N'230404', N'230400', N'南山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1071', N'230405', N'230400', N'兴安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1072', N'230406', N'230400', N'东山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1073', N'230407', N'230400', N'兴山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1074', N'230421', N'230400', N'萝北县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1075', N'230422', N'230400', N'绥滨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1076', N'230501', N'230500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1077', N'230502', N'230500', N'尖山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1078', N'230503', N'230500', N'岭东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1079', N'230505', N'230500', N'四方台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1080', N'230506', N'230500', N'宝山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1081', N'230521', N'230500', N'集贤县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1082', N'230522', N'230500', N'友谊县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1083', N'230523', N'230500', N'宝清县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1084', N'230524', N'230500', N'饶河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1085', N'230601', N'230600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1086', N'230602', N'230600', N'萨尔图区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1087', N'230603', N'230600', N'龙凤区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1088', N'230604', N'230600', N'让胡路区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1089', N'230605', N'230600', N'红岗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1090', N'230606', N'230600', N'大同区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1091', N'230621', N'230600', N'肇州县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1092', N'230622', N'230600', N'肇源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1093', N'230623', N'230600', N'林甸县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1094', N'230624', N'230600', N'杜尔伯特蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1095', N'230701', N'230700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1096', N'230702', N'230700', N'伊春区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1097', N'230703', N'230700', N'南岔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1098', N'230704', N'230700', N'友好区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1099', N'230705', N'230700', N'西林区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1100', N'230706', N'230700', N'翠峦区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1101', N'230707', N'230700', N'新青区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1102', N'230708', N'230700', N'美溪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1103', N'230709', N'230700', N'金山屯区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1104', N'230710', N'230700', N'五营区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1105', N'230711', N'230700', N'乌马河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1106', N'230712', N'230700', N'汤旺河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1107', N'230713', N'230700', N'带岭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1108', N'230714', N'230700', N'乌伊岭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1109', N'230715', N'230700', N'红星区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1110', N'230716', N'230700', N'上甘岭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1111', N'230722', N'230700', N'嘉荫县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1112', N'230781', N'230700', N'铁力市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1113', N'230801', N'230800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1114', N'230802', N'230800', N'永红区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1115', N'230803', N'230800', N'向阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1116', N'230804', N'230800', N'前进区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1117', N'230805', N'230800', N'东风区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1118', N'230811', N'230800', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1119', N'230822', N'230800', N'桦南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1120', N'230826', N'230800', N'桦川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1121', N'230828', N'230800', N'汤原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1122', N'230833', N'230800', N'抚远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1123', N'230881', N'230800', N'同江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1124', N'230882', N'230800', N'富锦市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1125', N'230901', N'230900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1126', N'230902', N'230900', N'新兴区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1127', N'230903', N'230900', N'桃山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1128', N'230904', N'230900', N'茄子河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1129', N'230921', N'230900', N'勃利县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1130', N'231001', N'231000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1131', N'231002', N'231000', N'东安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1132', N'231003', N'231000', N'阳明区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1133', N'231004', N'231000', N'爱民区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1134', N'231005', N'231000', N'西安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1135', N'231024', N'231000', N'东宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1136', N'231025', N'231000', N'林口县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1137', N'231081', N'231000', N'绥芬河市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1138', N'231083', N'231000', N'海林市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1139', N'231084', N'231000', N'宁安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1140', N'231085', N'231000', N'穆棱市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1141', N'231101', N'231100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1142', N'231102', N'231100', N'爱辉区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1143', N'231121', N'231100', N'嫩江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1144', N'231123', N'231100', N'逊克县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1145', N'231124', N'231100', N'孙吴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1146', N'231181', N'231100', N'北安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1147', N'231182', N'231100', N'五大连池市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1148', N'231201', N'231200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1149', N'231202', N'231200', N'北林区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1150', N'231221', N'231200', N'望奎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1151', N'231222', N'231200', N'兰西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1152', N'231223', N'231200', N'青冈县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1153', N'231224', N'231200', N'庆安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1154', N'231225', N'231200', N'明水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1155', N'231226', N'231200', N'绥棱县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1156', N'231281', N'231200', N'安达市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1157', N'231282', N'231200', N'肇东市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1158', N'231283', N'231200', N'海伦市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1159', N'232721', N'232700', N'呼玛县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1160', N'232722', N'232700', N'塔河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1161', N'232723', N'232700', N'漠河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1162', N'310101', N'310100', N'黄浦区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1163', N'310103', N'310100', N'卢湾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1164', N'310104', N'310100', N'徐汇区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1165', N'310105', N'310100', N'长宁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1166', N'310106', N'310100', N'静安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1167', N'310107', N'310100', N'普陀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1168', N'310108', N'310100', N'闸北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1169', N'310109', N'310100', N'虹口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1170', N'310110', N'310100', N'杨浦区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1171', N'310112', N'310100', N'闵行区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1172', N'310113', N'310100', N'宝山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1173', N'310114', N'310100', N'嘉定区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1174', N'310115', N'310100', N'浦东新区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1175', N'310116', N'310100', N'金山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1176', N'310117', N'310100', N'松江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1177', N'310118', N'310100', N'青浦区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1178', N'310119', N'310100', N'南汇区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1179', N'310120', N'310100', N'奉贤区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1180', N'310230', N'310200', N'崇明县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1181', N'320101', N'320100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1182', N'320102', N'320100', N'玄武区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1183', N'320103', N'320100', N'白下区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1184', N'320104', N'320100', N'秦淮区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1185', N'320105', N'320100', N'建邺区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1186', N'320106', N'320100', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1187', N'320107', N'320100', N'下关区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1188', N'320111', N'320100', N'浦口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1189', N'320113', N'320100', N'栖霞区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1190', N'320114', N'320100', N'雨花台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1191', N'320115', N'320100', N'江宁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1192', N'320116', N'320100', N'六合区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1193', N'320124', N'320100', N'溧水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1194', N'320125', N'320100', N'高淳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1195', N'320201', N'320200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1196', N'320202', N'320200', N'崇安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1197', N'320203', N'320200', N'南长区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1198', N'320204', N'320200', N'北塘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1199', N'320205', N'320200', N'锡山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1200', N'320206', N'320200', N'惠山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1201', N'320211', N'320200', N'滨湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1202', N'320281', N'320200', N'江阴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1203', N'320282', N'320200', N'宜兴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1204', N'320301', N'320300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1205', N'320302', N'320300', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1206', N'320303', N'320300', N'云龙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1207', N'320304', N'320300', N'九里区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1208', N'320305', N'320300', N'贾汪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1209', N'320311', N'320300', N'泉山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1210', N'320321', N'320300', N'丰　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1211', N'320322', N'320300', N'沛　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1212', N'320323', N'320300', N'铜山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1213', N'320324', N'320300', N'睢宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1214', N'320381', N'320300', N'新沂市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1215', N'320382', N'320300', N'邳州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1216', N'320401', N'320400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1217', N'320402', N'320400', N'天宁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1218', N'320404', N'320400', N'钟楼区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1219', N'320405', N'320400', N'戚墅堰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1220', N'320411', N'320400', N'新北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1221', N'320412', N'320400', N'武进区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1222', N'320481', N'320400', N'溧阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1223', N'320482', N'320400', N'金坛市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1224', N'320501', N'320500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1225', N'320502', N'320500', N'沧浪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1226', N'320503', N'320500', N'平江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1227', N'320504', N'320500', N'金阊区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1228', N'320505', N'320500', N'虎丘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1229', N'320506', N'320500', N'吴中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1230', N'320507', N'320500', N'相城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1231', N'320581', N'320500', N'常熟市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1232', N'320582', N'320500', N'张家港市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1233', N'320583', N'320500', N'昆山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1234', N'320584', N'320500', N'吴江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1235', N'320585', N'320500', N'太仓市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1236', N'320601', N'320600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1237', N'320602', N'320600', N'崇川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1238', N'320611', N'320600', N'港闸区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1239', N'320621', N'320600', N'海安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1240', N'320623', N'320600', N'如东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1241', N'320681', N'320600', N'启东市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1242', N'320682', N'320600', N'如皋市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1243', N'320683', N'320600', N'通州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1244', N'320684', N'320600', N'海门市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1245', N'320701', N'320700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1246', N'320703', N'320700', N'连云区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1247', N'320705', N'320700', N'新浦区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1248', N'320706', N'320700', N'海州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1249', N'320721', N'320700', N'赣榆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1250', N'320722', N'320700', N'东海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1251', N'320723', N'320700', N'灌云县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1252', N'320724', N'320700', N'灌南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1253', N'320801', N'320800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1254', N'320802', N'320800', N'清河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1255', N'320803', N'320800', N'楚州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1256', N'320804', N'320800', N'淮阴区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1257', N'320811', N'320800', N'清浦区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1258', N'320826', N'320800', N'涟水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1259', N'320829', N'320800', N'洪泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1260', N'320830', N'320800', N'盱眙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1261', N'320831', N'320800', N'金湖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1262', N'320901', N'320900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1263', N'320902', N'320900', N'亭湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1264', N'320903', N'320900', N'盐都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1265', N'320921', N'320900', N'响水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1266', N'320922', N'320900', N'滨海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1267', N'320923', N'320900', N'阜宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1268', N'320924', N'320900', N'射阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1269', N'320925', N'320900', N'建湖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1270', N'320981', N'320900', N'东台市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1271', N'320982', N'320900', N'大丰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1272', N'321001', N'321000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1273', N'321002', N'321000', N'广陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1274', N'321003', N'321000', N'邗江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1275', N'321011', N'321000', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1276', N'321023', N'321000', N'宝应县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1277', N'321081', N'321000', N'仪征市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1278', N'321084', N'321000', N'高邮市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1279', N'321088', N'321000', N'江都市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1280', N'321101', N'321100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1281', N'321102', N'321100', N'京口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1282', N'321111', N'321100', N'润州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1283', N'321112', N'321100', N'丹徒区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1284', N'321181', N'321100', N'丹阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1285', N'321182', N'321100', N'扬中市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1286', N'321183', N'321100', N'句容市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1287', N'321201', N'321200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1288', N'321202', N'321200', N'海陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1289', N'321203', N'321200', N'高港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1290', N'321281', N'321200', N'兴化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1291', N'321282', N'321200', N'靖江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1292', N'321283', N'321200', N'泰兴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1293', N'321284', N'321200', N'姜堰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1294', N'321301', N'321300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1295', N'321302', N'321300', N'宿城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1296', N'321311', N'321300', N'宿豫区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1297', N'321322', N'321300', N'沭阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1298', N'321323', N'321300', N'泗阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1299', N'321324', N'321300', N'泗洪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1300', N'330101', N'330100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1301', N'330102', N'330100', N'上城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1302', N'330103', N'330100', N'下城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1303', N'330104', N'330100', N'江干区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1304', N'330105', N'330100', N'拱墅区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1305', N'330106', N'330100', N'西湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1306', N'330108', N'330100', N'滨江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1307', N'330109', N'330100', N'萧山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1308', N'330110', N'330100', N'余杭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1309', N'330122', N'330100', N'桐庐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1310', N'330127', N'330100', N'淳安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1311', N'330182', N'330100', N'建德市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1312', N'330183', N'330100', N'富阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1313', N'330185', N'330100', N'临安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1314', N'330201', N'330200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1315', N'330203', N'330200', N'海曙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1316', N'330204', N'330200', N'江东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1317', N'330205', N'330200', N'江北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1318', N'330206', N'330200', N'北仑区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1319', N'330211', N'330200', N'镇海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1320', N'330212', N'330200', N'鄞州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1321', N'330225', N'330200', N'象山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1322', N'330226', N'330200', N'宁海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1323', N'330281', N'330200', N'余姚市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1324', N'330282', N'330200', N'慈溪市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1325', N'330283', N'330200', N'奉化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1326', N'330301', N'330300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1327', N'330302', N'330300', N'鹿城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1328', N'330303', N'330300', N'龙湾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1329', N'330304', N'330300', N'瓯海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1330', N'330322', N'330300', N'洞头县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1331', N'330324', N'330300', N'永嘉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1332', N'330326', N'330300', N'平阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1333', N'330327', N'330300', N'苍南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1334', N'330328', N'330300', N'文成县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1335', N'330329', N'330300', N'泰顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1336', N'330381', N'330300', N'瑞安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1337', N'330382', N'330300', N'乐清市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1338', N'330401', N'330400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1339', N'330402', N'330400', N'秀城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1340', N'330411', N'330400', N'秀洲区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1341', N'330421', N'330400', N'嘉善县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1342', N'330424', N'330400', N'海盐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1343', N'330481', N'330400', N'海宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1344', N'330482', N'330400', N'平湖市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1345', N'330483', N'330400', N'桐乡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1346', N'330501', N'330500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1347', N'330502', N'330500', N'吴兴区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1348', N'330503', N'330500', N'南浔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1349', N'330521', N'330500', N'德清县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1350', N'330522', N'330500', N'长兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1351', N'330523', N'330500', N'安吉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1352', N'330601', N'330600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1353', N'330602', N'330600', N'越城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1354', N'330621', N'330600', N'绍兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1355', N'330624', N'330600', N'新昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1356', N'330681', N'330600', N'诸暨市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1357', N'330682', N'330600', N'上虞市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1358', N'330683', N'330600', N'嵊州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1359', N'330701', N'330700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1360', N'330702', N'330700', N'婺城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1361', N'330703', N'330700', N'金东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1362', N'330723', N'330700', N'武义县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1363', N'330726', N'330700', N'浦江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1364', N'330727', N'330700', N'磐安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1365', N'330781', N'330700', N'兰溪市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1366', N'330782', N'330700', N'义乌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1367', N'330783', N'330700', N'东阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1368', N'330784', N'330700', N'永康市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1369', N'330801', N'330800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1370', N'330802', N'330800', N'柯城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1371', N'330803', N'330800', N'衢江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1372', N'330822', N'330800', N'常山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1373', N'330824', N'330800', N'开化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1374', N'330825', N'330800', N'龙游县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1375', N'330881', N'330800', N'江山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1376', N'330901', N'330900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1377', N'330902', N'330900', N'定海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1378', N'330903', N'330900', N'普陀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1379', N'330921', N'330900', N'岱山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1380', N'330922', N'330900', N'嵊泗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1381', N'331001', N'331000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1382', N'331002', N'331000', N'椒江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1383', N'331003', N'331000', N'黄岩区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1384', N'331004', N'331000', N'路桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1385', N'331021', N'331000', N'玉环县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1386', N'331022', N'331000', N'三门县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1387', N'331023', N'331000', N'天台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1388', N'331024', N'331000', N'仙居县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1389', N'331081', N'331000', N'温岭市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1390', N'331082', N'331000', N'临海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1391', N'331101', N'331100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1392', N'331102', N'331100', N'莲都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1393', N'331121', N'331100', N'青田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1394', N'331122', N'331100', N'缙云县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1395', N'331123', N'331100', N'遂昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1396', N'331124', N'331100', N'松阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1397', N'331125', N'331100', N'云和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1398', N'331126', N'331100', N'庆元县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1399', N'331127', N'331100', N'景宁畲族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1400', N'331181', N'331100', N'龙泉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1401', N'340101', N'340100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1402', N'340102', N'340100', N'瑶海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1403', N'340103', N'340100', N'庐阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1404', N'340104', N'340100', N'蜀山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1405', N'340111', N'340100', N'包河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1406', N'340121', N'340100', N'长丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1407', N'340122', N'340100', N'肥东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1408', N'340123', N'340100', N'肥西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1409', N'340201', N'340200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1410', N'340202', N'340200', N'镜湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1411', N'340203', N'340200', N'马塘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1412', N'340204', N'340200', N'新芜区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1413', N'340207', N'340200', N'鸠江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1414', N'340221', N'340200', N'芜湖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1415', N'340222', N'340200', N'繁昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1416', N'340223', N'340200', N'南陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1417', N'340301', N'340300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1418', N'340302', N'340300', N'龙子湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1419', N'340303', N'340300', N'蚌山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1420', N'340304', N'340300', N'禹会区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1421', N'340311', N'340300', N'淮上区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1422', N'340321', N'340300', N'怀远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1423', N'340322', N'340300', N'五河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1424', N'340323', N'340300', N'固镇县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1425', N'340401', N'340400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1426', N'340402', N'340400', N'大通区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1427', N'340403', N'340400', N'田家庵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1428', N'340404', N'340400', N'谢家集区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1429', N'340405', N'340400', N'八公山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1430', N'340406', N'340400', N'潘集区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1431', N'340421', N'340400', N'凤台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1432', N'340501', N'340500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1433', N'340502', N'340500', N'金家庄区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1434', N'340503', N'340500', N'花山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1435', N'340504', N'340500', N'雨山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1436', N'340521', N'340500', N'当涂县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1437', N'340601', N'340600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1438', N'340602', N'340600', N'杜集区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1439', N'340603', N'340600', N'相山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1440', N'340604', N'340600', N'烈山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1441', N'340621', N'340600', N'濉溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1442', N'340701', N'340700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1443', N'340702', N'340700', N'铜官山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1444', N'340703', N'340700', N'狮子山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1445', N'340711', N'340700', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1446', N'340721', N'340700', N'铜陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1447', N'340801', N'340800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1448', N'340802', N'340800', N'迎江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1449', N'340803', N'340800', N'大观区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1450', N'340811', N'340800', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1451', N'340822', N'340800', N'怀宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1452', N'340823', N'340800', N'枞阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1453', N'340824', N'340800', N'潜山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1454', N'340825', N'340800', N'太湖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1455', N'340826', N'340800', N'宿松县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1456', N'340827', N'340800', N'望江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1457', N'340828', N'340800', N'岳西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1458', N'340881', N'340800', N'桐城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1459', N'341001', N'341000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1460', N'341002', N'341000', N'屯溪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1461', N'341003', N'341000', N'黄山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1462', N'341004', N'341000', N'徽州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1463', N'341021', N'341000', N'歙　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1464', N'341022', N'341000', N'休宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1465', N'341023', N'341000', N'黟　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1466', N'341024', N'341000', N'祁门县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1467', N'341101', N'341100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1468', N'341102', N'341100', N'琅琊区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1469', N'341103', N'341100', N'南谯区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1470', N'341122', N'341100', N'来安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1471', N'341124', N'341100', N'全椒县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1472', N'341125', N'341100', N'定远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1473', N'341126', N'341100', N'凤阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1474', N'341181', N'341100', N'天长市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1475', N'341182', N'341100', N'明光市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1476', N'341201', N'341200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1477', N'341202', N'341200', N'颍州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1478', N'341203', N'341200', N'颍东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1479', N'341204', N'341200', N'颍泉区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1480', N'341221', N'341200', N'临泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1481', N'341222', N'341200', N'太和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1482', N'341225', N'341200', N'阜南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1483', N'341226', N'341200', N'颍上县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1484', N'341282', N'341200', N'界首市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1485', N'341301', N'341300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1486', N'341302', N'341300', N'墉桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1487', N'341321', N'341300', N'砀山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1488', N'341322', N'341300', N'萧　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1489', N'341323', N'341300', N'灵璧县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1490', N'341324', N'341300', N'泗　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1491', N'341401', N'341400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1492', N'341402', N'341400', N'居巢区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1493', N'341421', N'341400', N'庐江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1494', N'341422', N'341400', N'无为县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1495', N'341423', N'341400', N'含山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1496', N'341424', N'341400', N'和　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1497', N'341501', N'341500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1498', N'341502', N'341500', N'金安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1499', N'341503', N'341500', N'裕安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1500', N'341521', N'341500', N'寿　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1501', N'341522', N'341500', N'霍邱县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1502', N'341523', N'341500', N'舒城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1503', N'341524', N'341500', N'金寨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1504', N'341525', N'341500', N'霍山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1505', N'341601', N'341600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1506', N'341602', N'341600', N'谯城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1507', N'341621', N'341600', N'涡阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1508', N'341622', N'341600', N'蒙城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1509', N'341623', N'341600', N'利辛县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1510', N'341701', N'341700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1511', N'341702', N'341700', N'贵池区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1512', N'341721', N'341700', N'东至县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1513', N'341722', N'341700', N'石台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1514', N'341723', N'341700', N'青阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1515', N'341801', N'341800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1516', N'341802', N'341800', N'宣州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1517', N'341821', N'341800', N'郎溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1518', N'341822', N'341800', N'广德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1519', N'341823', N'341800', N'泾　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1520', N'341824', N'341800', N'绩溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1521', N'341825', N'341800', N'旌德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1522', N'341881', N'341800', N'宁国市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1523', N'350101', N'350100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1524', N'350102', N'350100', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1525', N'350103', N'350100', N'台江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1526', N'350104', N'350100', N'仓山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1527', N'350105', N'350100', N'马尾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1528', N'350111', N'350100', N'晋安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1529', N'350121', N'350100', N'闽侯县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1530', N'350122', N'350100', N'连江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1531', N'350123', N'350100', N'罗源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1532', N'350124', N'350100', N'闽清县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1533', N'350125', N'350100', N'永泰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1534', N'350128', N'350100', N'平潭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1535', N'350181', N'350100', N'福清市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1536', N'350182', N'350100', N'长乐市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1537', N'350201', N'350200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1538', N'350203', N'350200', N'思明区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1539', N'350205', N'350200', N'海沧区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1540', N'350206', N'350200', N'湖里区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1541', N'350211', N'350200', N'集美区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1542', N'350212', N'350200', N'同安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1543', N'350213', N'350200', N'翔安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1544', N'350301', N'350300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1545', N'350302', N'350300', N'城厢区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1546', N'350303', N'350300', N'涵江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1547', N'350304', N'350300', N'荔城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1548', N'350305', N'350300', N'秀屿区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1549', N'350322', N'350300', N'仙游县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1550', N'350401', N'350400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1551', N'350402', N'350400', N'梅列区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1552', N'350403', N'350400', N'三元区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1553', N'350421', N'350400', N'明溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1554', N'350423', N'350400', N'清流县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1555', N'350424', N'350400', N'宁化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1556', N'350425', N'350400', N'大田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1557', N'350426', N'350400', N'尤溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1558', N'350427', N'350400', N'沙　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1559', N'350428', N'350400', N'将乐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1560', N'350429', N'350400', N'泰宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1561', N'350430', N'350400', N'建宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1562', N'350481', N'350400', N'永安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1563', N'350501', N'350500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1564', N'350502', N'350500', N'鲤城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1565', N'350503', N'350500', N'丰泽区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1566', N'350504', N'350500', N'洛江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1567', N'350505', N'350500', N'泉港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1568', N'350521', N'350500', N'惠安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1569', N'350524', N'350500', N'安溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1570', N'350525', N'350500', N'永春县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1571', N'350526', N'350500', N'德化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1572', N'350527', N'350500', N'金门县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1573', N'350581', N'350500', N'石狮市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1574', N'350582', N'350500', N'晋江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1575', N'350583', N'350500', N'南安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1576', N'350601', N'350600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1577', N'350602', N'350600', N'芗城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1578', N'350603', N'350600', N'龙文区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1579', N'350622', N'350600', N'云霄县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1580', N'350623', N'350600', N'漳浦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1581', N'350624', N'350600', N'诏安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1582', N'350625', N'350600', N'长泰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1583', N'350626', N'350600', N'东山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1584', N'350627', N'350600', N'南靖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1585', N'350628', N'350600', N'平和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1586', N'350629', N'350600', N'华安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1587', N'350681', N'350600', N'龙海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1588', N'350701', N'350700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1589', N'350702', N'350700', N'延平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1590', N'350721', N'350700', N'顺昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1591', N'350722', N'350700', N'浦城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1592', N'350723', N'350700', N'光泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1593', N'350724', N'350700', N'松溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1594', N'350725', N'350700', N'政和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1595', N'350781', N'350700', N'邵武市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1596', N'350782', N'350700', N'武夷山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1597', N'350783', N'350700', N'建瓯市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1598', N'350784', N'350700', N'建阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1599', N'350801', N'350800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1600', N'350802', N'350800', N'新罗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1601', N'350821', N'350800', N'长汀县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1602', N'350822', N'350800', N'永定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1603', N'350823', N'350800', N'上杭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1604', N'350824', N'350800', N'武平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1605', N'350825', N'350800', N'连城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1606', N'350881', N'350800', N'漳平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1607', N'350901', N'350900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1608', N'350902', N'350900', N'蕉城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1609', N'350921', N'350900', N'霞浦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1610', N'350922', N'350900', N'古田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1611', N'350923', N'350900', N'屏南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1612', N'350924', N'350900', N'寿宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1613', N'350925', N'350900', N'周宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1614', N'350926', N'350900', N'柘荣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1615', N'350981', N'350900', N'福安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1616', N'350982', N'350900', N'福鼎市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1617', N'360101', N'360100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1618', N'360102', N'360100', N'东湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1619', N'360103', N'360100', N'西湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1620', N'360104', N'360100', N'青云谱区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1621', N'360105', N'360100', N'湾里区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1622', N'360111', N'360100', N'青山湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1623', N'360121', N'360100', N'南昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1624', N'360122', N'360100', N'新建县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1625', N'360123', N'360100', N'安义县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1626', N'360124', N'360100', N'进贤县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1627', N'360201', N'360200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1628', N'360202', N'360200', N'昌江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1629', N'360203', N'360200', N'珠山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1630', N'360222', N'360200', N'浮梁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1631', N'360281', N'360200', N'乐平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1632', N'360301', N'360300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1633', N'360302', N'360300', N'安源区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1634', N'360313', N'360300', N'湘东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1635', N'360321', N'360300', N'莲花县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1636', N'360322', N'360300', N'上栗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1637', N'360323', N'360300', N'芦溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1638', N'360401', N'360400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1639', N'360402', N'360400', N'庐山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1640', N'360403', N'360400', N'浔阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1641', N'360421', N'360400', N'九江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1642', N'360423', N'360400', N'武宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1643', N'360424', N'360400', N'修水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1644', N'360425', N'360400', N'永修县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1645', N'360426', N'360400', N'德安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1646', N'360427', N'360400', N'星子县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1647', N'360428', N'360400', N'都昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1648', N'360429', N'360400', N'湖口县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1649', N'360430', N'360400', N'彭泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1650', N'360481', N'360400', N'瑞昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1651', N'360501', N'360500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1652', N'360502', N'360500', N'渝水区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1653', N'360521', N'360500', N'分宜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1654', N'360601', N'360600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1655', N'360602', N'360600', N'月湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1656', N'360622', N'360600', N'余江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1657', N'360681', N'360600', N'贵溪市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1658', N'360701', N'360700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1659', N'360702', N'360700', N'章贡区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1660', N'360721', N'360700', N'赣　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1661', N'360722', N'360700', N'信丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1662', N'360723', N'360700', N'大余县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1663', N'360724', N'360700', N'上犹县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1664', N'360725', N'360700', N'崇义县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1665', N'360726', N'360700', N'安远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1666', N'360727', N'360700', N'龙南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1667', N'360728', N'360700', N'定南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1668', N'360729', N'360700', N'全南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1669', N'360730', N'360700', N'宁都县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1670', N'360731', N'360700', N'于都县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1671', N'360732', N'360700', N'兴国县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1672', N'360733', N'360700', N'会昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1673', N'360734', N'360700', N'寻乌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1674', N'360735', N'360700', N'石城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1675', N'360781', N'360700', N'瑞金市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1676', N'360782', N'360700', N'南康市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1677', N'360801', N'360800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1678', N'360802', N'360800', N'吉州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1679', N'360803', N'360800', N'青原区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1680', N'360821', N'360800', N'吉安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1681', N'360822', N'360800', N'吉水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1682', N'360823', N'360800', N'峡江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1683', N'360824', N'360800', N'新干县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1684', N'360825', N'360800', N'永丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1685', N'360826', N'360800', N'泰和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1686', N'360827', N'360800', N'遂川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1687', N'360828', N'360800', N'万安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1688', N'360829', N'360800', N'安福县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1689', N'360830', N'360800', N'永新县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1690', N'360881', N'360800', N'井冈山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1691', N'360901', N'360900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1692', N'360902', N'360900', N'袁州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1693', N'360921', N'360900', N'奉新县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1694', N'360922', N'360900', N'万载县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1695', N'360923', N'360900', N'上高县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1696', N'360924', N'360900', N'宜丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1697', N'360925', N'360900', N'靖安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1698', N'360926', N'360900', N'铜鼓县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1699', N'360981', N'360900', N'丰城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1700', N'360982', N'360900', N'樟树市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1701', N'360983', N'360900', N'高安市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1702', N'361001', N'361000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1703', N'361002', N'361000', N'临川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1704', N'361021', N'361000', N'南城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1705', N'361022', N'361000', N'黎川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1706', N'361023', N'361000', N'南丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1707', N'361024', N'361000', N'崇仁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1708', N'361025', N'361000', N'乐安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1709', N'361026', N'361000', N'宜黄县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1710', N'361027', N'361000', N'金溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1711', N'361028', N'361000', N'资溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1712', N'361029', N'361000', N'东乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1713', N'361030', N'361000', N'广昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1714', N'361101', N'361100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1715', N'361102', N'361100', N'信州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1716', N'361121', N'361100', N'上饶县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1717', N'361122', N'361100', N'广丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1718', N'361123', N'361100', N'玉山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1719', N'361124', N'361100', N'铅山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1720', N'361125', N'361100', N'横峰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1721', N'361126', N'361100', N'弋阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1722', N'361127', N'361100', N'余干县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1723', N'361128', N'361100', N'鄱阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1724', N'361129', N'361100', N'万年县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1725', N'361130', N'361100', N'婺源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1726', N'361181', N'361100', N'德兴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1727', N'370101', N'370100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1728', N'370102', N'370100', N'历下区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1729', N'370103', N'370100', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1730', N'370104', N'370100', N'槐荫区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1731', N'370105', N'370100', N'天桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1732', N'370112', N'370100', N'历城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1733', N'370113', N'370100', N'长清区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1734', N'370124', N'370100', N'平阴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1735', N'370125', N'370100', N'济阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1736', N'370126', N'370100', N'商河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1737', N'370181', N'370100', N'章丘市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1738', N'370201', N'370200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1739', N'370202', N'370200', N'市南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1740', N'370203', N'370200', N'市北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1741', N'370205', N'370200', N'四方区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1742', N'370211', N'370200', N'黄岛区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1743', N'370212', N'370200', N'崂山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1744', N'370213', N'370200', N'李沧区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1745', N'370214', N'370200', N'城阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1746', N'370281', N'370200', N'胶州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1747', N'370282', N'370200', N'即墨市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1748', N'370283', N'370200', N'平度市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1749', N'370284', N'370200', N'胶南市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1750', N'370285', N'370200', N'莱西市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1751', N'370301', N'370300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1752', N'370302', N'370300', N'淄川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1753', N'370303', N'370300', N'张店区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1754', N'370304', N'370300', N'博山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1755', N'370305', N'370300', N'临淄区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1756', N'370306', N'370300', N'周村区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1757', N'370321', N'370300', N'桓台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1758', N'370322', N'370300', N'高青县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1759', N'370323', N'370300', N'沂源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1760', N'370401', N'370400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1761', N'370402', N'370400', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1762', N'370403', N'370400', N'薛城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1763', N'370404', N'370400', N'峄城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1764', N'370405', N'370400', N'台儿庄区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1765', N'370406', N'370400', N'山亭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1766', N'370481', N'370400', N'滕州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1767', N'370501', N'370500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1768', N'370502', N'370500', N'东营区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1769', N'370503', N'370500', N'河口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1770', N'370521', N'370500', N'垦利县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1771', N'370522', N'370500', N'利津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1772', N'370523', N'370500', N'广饶县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1773', N'370601', N'370600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1774', N'370602', N'370600', N'芝罘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1775', N'370611', N'370600', N'福山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1776', N'370612', N'370600', N'牟平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1777', N'370613', N'370600', N'莱山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1778', N'370634', N'370600', N'长岛县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1779', N'370681', N'370600', N'龙口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1780', N'370682', N'370600', N'莱阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1781', N'370683', N'370600', N'莱州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1782', N'370684', N'370600', N'蓬莱市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1783', N'370685', N'370600', N'招远市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1784', N'370686', N'370600', N'栖霞市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1785', N'370687', N'370600', N'海阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1786', N'370701', N'370700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1787', N'370702', N'370700', N'潍城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1788', N'370703', N'370700', N'寒亭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1789', N'370704', N'370700', N'坊子区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1790', N'370705', N'370700', N'奎文区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1791', N'370724', N'370700', N'临朐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1792', N'370725', N'370700', N'昌乐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1793', N'370781', N'370700', N'青州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1794', N'370782', N'370700', N'诸城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1795', N'370783', N'370700', N'寿光市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1796', N'370784', N'370700', N'安丘市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1797', N'370785', N'370700', N'高密市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1798', N'370786', N'370700', N'昌邑市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1799', N'370801', N'370800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1800', N'370802', N'370800', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1801', N'370811', N'370800', N'任城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1802', N'370826', N'370800', N'微山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1803', N'370827', N'370800', N'鱼台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1804', N'370828', N'370800', N'金乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1805', N'370829', N'370800', N'嘉祥县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1806', N'370830', N'370800', N'汶上县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1807', N'370831', N'370800', N'泗水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1808', N'370832', N'370800', N'梁山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1809', N'370881', N'370800', N'曲阜市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1810', N'370882', N'370800', N'兖州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1811', N'370883', N'370800', N'邹城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1812', N'370901', N'370900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1813', N'370902', N'370900', N'泰山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1814', N'370903', N'370900', N'岱岳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1815', N'370921', N'370900', N'宁阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1816', N'370923', N'370900', N'东平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1817', N'370982', N'370900', N'新泰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1818', N'370983', N'370900', N'肥城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1819', N'371001', N'371000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1820', N'371002', N'371000', N'环翠区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1821', N'371081', N'371000', N'文登市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1822', N'371082', N'371000', N'荣成市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1823', N'371083', N'371000', N'乳山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1824', N'371101', N'371100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1825', N'371102', N'371100', N'东港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1826', N'371103', N'371100', N'岚山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1827', N'371121', N'371100', N'五莲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1828', N'371122', N'371100', N'莒　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1829', N'371201', N'371200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1830', N'371202', N'371200', N'莱城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1831', N'371203', N'371200', N'钢城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1832', N'371301', N'371300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1833', N'371302', N'371300', N'兰山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1834', N'371311', N'371300', N'罗庄区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1835', N'371312', N'371300', N'河东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1836', N'371321', N'371300', N'沂南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1837', N'371322', N'371300', N'郯城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1838', N'371323', N'371300', N'沂水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1839', N'371324', N'371300', N'苍山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1840', N'371325', N'371300', N'费　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1841', N'371326', N'371300', N'平邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1842', N'371327', N'371300', N'莒南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1843', N'371328', N'371300', N'蒙阴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1844', N'371329', N'371300', N'临沭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1845', N'371401', N'371400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1846', N'371402', N'371400', N'德城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1847', N'371421', N'371400', N'陵　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1848', N'371422', N'371400', N'宁津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1849', N'371423', N'371400', N'庆云县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1850', N'371424', N'371400', N'临邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1851', N'371425', N'371400', N'齐河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1852', N'371426', N'371400', N'平原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1853', N'371427', N'371400', N'夏津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1854', N'371428', N'371400', N'武城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1855', N'371481', N'371400', N'乐陵市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1856', N'371482', N'371400', N'禹城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1857', N'371501', N'371500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1858', N'371502', N'371500', N'东昌府区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1859', N'371521', N'371500', N'阳谷县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1860', N'371522', N'371500', N'莘　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1861', N'371523', N'371500', N'茌平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1862', N'371524', N'371500', N'东阿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1863', N'371525', N'371500', N'冠　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1864', N'371526', N'371500', N'高唐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1865', N'371581', N'371500', N'临清市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1866', N'371601', N'371600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1867', N'371602', N'371600', N'滨城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1868', N'371621', N'371600', N'惠民县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1869', N'371622', N'371600', N'阳信县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1870', N'371623', N'371600', N'无棣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1871', N'371624', N'371600', N'沾化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1872', N'371625', N'371600', N'博兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1873', N'371626', N'371600', N'邹平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1874', N'371701', N'371700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1875', N'371702', N'371700', N'牡丹区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1876', N'371721', N'371700', N'曹　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1877', N'371722', N'371700', N'单　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1878', N'371723', N'371700', N'成武县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1879', N'371724', N'371700', N'巨野县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1880', N'371725', N'371700', N'郓城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1881', N'371726', N'371700', N'鄄城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1882', N'371727', N'371700', N'定陶县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1883', N'371728', N'371700', N'东明县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1884', N'410101', N'410100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1885', N'410102', N'410100', N'中原区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1886', N'410103', N'410100', N'二七区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1887', N'410104', N'410100', N'管城回族区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1888', N'410105', N'410100', N'金水区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1889', N'410106', N'410100', N'上街区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1890', N'410108', N'410100', N'邙山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1891', N'410122', N'410100', N'中牟县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1892', N'410181', N'410100', N'巩义市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1893', N'410182', N'410100', N'荥阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1894', N'410183', N'410100', N'新密市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1895', N'410184', N'410100', N'新郑市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1896', N'410185', N'410100', N'登封市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1897', N'410201', N'410200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1898', N'410202', N'410200', N'龙亭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1899', N'410203', N'410200', N'顺河回族区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1900', N'410204', N'410200', N'鼓楼区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1901', N'410205', N'410200', N'南关区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1902', N'410211', N'410200', N'郊　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1903', N'410221', N'410200', N'杞　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1904', N'410222', N'410200', N'通许县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1905', N'410223', N'410200', N'尉氏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1906', N'410224', N'410200', N'开封县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1907', N'410225', N'410200', N'兰考县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1908', N'410301', N'410300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1909', N'410302', N'410300', N'老城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1910', N'410303', N'410300', N'西工区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1911', N'410304', N'410300', N'廛河回族区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1912', N'410305', N'410300', N'涧西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1913', N'410306', N'410300', N'吉利区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1914', N'410307', N'410300', N'洛龙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1915', N'410322', N'410300', N'孟津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1916', N'410323', N'410300', N'新安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1917', N'410324', N'410300', N'栾川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1918', N'410325', N'410300', N'嵩　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1919', N'410326', N'410300', N'汝阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1920', N'410327', N'410300', N'宜阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1921', N'410328', N'410300', N'洛宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1922', N'410329', N'410300', N'伊川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1923', N'410381', N'410300', N'偃师市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1924', N'410401', N'410400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1925', N'410402', N'410400', N'新华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1926', N'410403', N'410400', N'卫东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1927', N'410404', N'410400', N'石龙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1928', N'410411', N'410400', N'湛河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1929', N'410421', N'410400', N'宝丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1930', N'410422', N'410400', N'叶　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1931', N'410423', N'410400', N'鲁山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1932', N'410425', N'410400', N'郏　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1933', N'410481', N'410400', N'舞钢市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1934', N'410482', N'410400', N'汝州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1935', N'410501', N'410500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1936', N'410502', N'410500', N'文峰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1937', N'410503', N'410500', N'北关区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1938', N'410505', N'410500', N'殷都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1939', N'410506', N'410500', N'龙安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1940', N'410522', N'410500', N'安阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1941', N'410523', N'410500', N'汤阴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1942', N'410526', N'410500', N'滑　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1943', N'410527', N'410500', N'内黄县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1944', N'410581', N'410500', N'林州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1945', N'410601', N'410600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1946', N'410602', N'410600', N'鹤山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1947', N'410603', N'410600', N'山城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1948', N'410611', N'410600', N'淇滨区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1949', N'410621', N'410600', N'浚　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1950', N'410622', N'410600', N'淇　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1951', N'410701', N'410700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1952', N'410702', N'410700', N'红旗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1953', N'410703', N'410700', N'卫滨区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1954', N'410704', N'410700', N'凤泉区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1955', N'410711', N'410700', N'牧野区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1956', N'410721', N'410700', N'新乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1957', N'410724', N'410700', N'获嘉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1958', N'410725', N'410700', N'原阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1959', N'410726', N'410700', N'延津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1960', N'410727', N'410700', N'封丘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1961', N'410728', N'410700', N'长垣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1962', N'410781', N'410700', N'卫辉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1963', N'410782', N'410700', N'辉县市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1964', N'410801', N'410800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1965', N'410802', N'410800', N'解放区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1966', N'410803', N'410800', N'中站区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1967', N'410804', N'410800', N'马村区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1968', N'410811', N'410800', N'山阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1969', N'410821', N'410800', N'修武县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1970', N'410822', N'410800', N'博爱县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1971', N'410823', N'410800', N'武陟县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1972', N'410825', N'410800', N'温　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1973', N'410881', N'410800', N'济源市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1974', N'410882', N'410800', N'沁阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1975', N'410883', N'410800', N'孟州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1976', N'410901', N'410900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1977', N'410902', N'410900', N'华龙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1978', N'410922', N'410900', N'清丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1979', N'410923', N'410900', N'南乐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1980', N'410926', N'410900', N'范　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1981', N'410927', N'410900', N'台前县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1982', N'410928', N'410900', N'濮阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1983', N'411001', N'411000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1984', N'411002', N'411000', N'魏都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1985', N'411023', N'411000', N'许昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1986', N'411024', N'411000', N'鄢陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1987', N'411025', N'411000', N'襄城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1988', N'411081', N'411000', N'禹州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1989', N'411082', N'411000', N'长葛市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1990', N'411101', N'411100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1991', N'411102', N'411100', N'源汇区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1992', N'411103', N'411100', N'郾城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1993', N'411104', N'411100', N'召陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1994', N'411121', N'411100', N'舞阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1995', N'411122', N'411100', N'临颍县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1996', N'411201', N'411200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1997', N'411202', N'411200', N'湖滨区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1998', N'411221', N'411200', N'渑池县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'1999', N'411222', N'411200', N'陕　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2000', N'411224', N'411200', N'卢氏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2001', N'411281', N'411200', N'义马市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2002', N'411282', N'411200', N'灵宝市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2003', N'411301', N'411300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2004', N'411302', N'411300', N'宛城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2005', N'411303', N'411300', N'卧龙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2006', N'411321', N'411300', N'南召县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2007', N'411322', N'411300', N'方城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2008', N'411323', N'411300', N'西峡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2009', N'411324', N'411300', N'镇平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2010', N'411325', N'411300', N'内乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2011', N'411326', N'411300', N'淅川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2012', N'411327', N'411300', N'社旗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2013', N'411328', N'411300', N'唐河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2014', N'411329', N'411300', N'新野县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2015', N'411330', N'411300', N'桐柏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2016', N'411381', N'411300', N'邓州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2017', N'411401', N'411400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2018', N'411402', N'411400', N'梁园区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2019', N'411403', N'411400', N'睢阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2020', N'411421', N'411400', N'民权县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2021', N'411422', N'411400', N'睢　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2022', N'411423', N'411400', N'宁陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2023', N'411424', N'411400', N'柘城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2024', N'411425', N'411400', N'虞城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2025', N'411426', N'411400', N'夏邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2026', N'411481', N'411400', N'永城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2027', N'411501', N'411500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2028', N'411502', N'411500', N'师河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2029', N'411503', N'411500', N'平桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2030', N'411521', N'411500', N'罗山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2031', N'411522', N'411500', N'光山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2032', N'411523', N'411500', N'新　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2033', N'411524', N'411500', N'商城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2034', N'411525', N'411500', N'固始县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2035', N'411526', N'411500', N'潢川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2036', N'411527', N'411500', N'淮滨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2037', N'411528', N'411500', N'息　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2038', N'411601', N'411600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2039', N'411602', N'411600', N'川汇区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2040', N'411621', N'411600', N'扶沟县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2041', N'411622', N'411600', N'西华县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2042', N'411623', N'411600', N'商水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2043', N'411624', N'411600', N'沈丘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2044', N'411625', N'411600', N'郸城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2045', N'411626', N'411600', N'淮阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2046', N'411627', N'411600', N'太康县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2047', N'411628', N'411600', N'鹿邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2048', N'411681', N'411600', N'项城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2049', N'411701', N'411700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2050', N'411702', N'411700', N'驿城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2051', N'411721', N'411700', N'西平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2052', N'411722', N'411700', N'上蔡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2053', N'411723', N'411700', N'平舆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2054', N'411724', N'411700', N'正阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2055', N'411725', N'411700', N'确山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2056', N'411726', N'411700', N'泌阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2057', N'411727', N'411700', N'汝南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2058', N'411728', N'411700', N'遂平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2059', N'411729', N'411700', N'新蔡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2060', N'420101', N'420100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2061', N'420102', N'420100', N'江岸区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2062', N'420103', N'420100', N'江汉区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2063', N'420104', N'420100', N'乔口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2064', N'420105', N'420100', N'汉阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2065', N'420106', N'420100', N'武昌区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2066', N'420107', N'420100', N'青山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2067', N'420111', N'420100', N'洪山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2068', N'420112', N'420100', N'东西湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2069', N'420113', N'420100', N'汉南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2070', N'420114', N'420100', N'蔡甸区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2071', N'420115', N'420100', N'江夏区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2072', N'420116', N'420100', N'黄陂区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2073', N'420117', N'420100', N'新洲区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2074', N'420201', N'420200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2075', N'420202', N'420200', N'黄石港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2076', N'420203', N'420200', N'西塞山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2077', N'420204', N'420200', N'下陆区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2078', N'420205', N'420200', N'铁山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2079', N'420222', N'420200', N'阳新县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2080', N'420281', N'420200', N'大冶市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2081', N'420301', N'420300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2082', N'420302', N'420300', N'茅箭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2083', N'420303', N'420300', N'张湾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2084', N'420321', N'420300', N'郧　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2085', N'420322', N'420300', N'郧西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2086', N'420323', N'420300', N'竹山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2087', N'420324', N'420300', N'竹溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2088', N'420325', N'420300', N'房　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2089', N'420381', N'420300', N'丹江口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2090', N'420501', N'420500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2091', N'420502', N'420500', N'西陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2092', N'420503', N'420500', N'伍家岗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2093', N'420504', N'420500', N'点军区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2094', N'420505', N'420500', N'猇亭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2095', N'420506', N'420500', N'夷陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2096', N'420525', N'420500', N'远安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2097', N'420526', N'420500', N'兴山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2098', N'420527', N'420500', N'秭归县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2099', N'420528', N'420500', N'长阳土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2100', N'420529', N'420500', N'五峰土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2101', N'420581', N'420500', N'宜都市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2102', N'420582', N'420500', N'当阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2103', N'420583', N'420500', N'枝江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2104', N'420601', N'420600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2105', N'420602', N'420600', N'襄城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2106', N'420606', N'420600', N'樊城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2107', N'420607', N'420600', N'襄阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2108', N'420624', N'420600', N'南漳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2109', N'420625', N'420600', N'谷城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2110', N'420626', N'420600', N'保康县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2111', N'420682', N'420600', N'老河口市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2112', N'420683', N'420600', N'枣阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2113', N'420684', N'420600', N'宜城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2114', N'420701', N'420700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2115', N'420702', N'420700', N'梁子湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2116', N'420703', N'420700', N'华容区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2117', N'420704', N'420700', N'鄂城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2118', N'420801', N'420800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2119', N'420802', N'420800', N'东宝区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2120', N'420804', N'420800', N'掇刀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2121', N'420821', N'420800', N'京山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2122', N'420822', N'420800', N'沙洋县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2123', N'420881', N'420800', N'钟祥市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2124', N'420901', N'420900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2125', N'420902', N'420900', N'孝南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2126', N'420921', N'420900', N'孝昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2127', N'420922', N'420900', N'大悟县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2128', N'420923', N'420900', N'云梦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2129', N'420981', N'420900', N'应城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2130', N'420982', N'420900', N'安陆市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2131', N'420984', N'420900', N'汉川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2132', N'421001', N'421000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2133', N'421002', N'421000', N'沙市区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2134', N'421003', N'421000', N'荆州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2135', N'421022', N'421000', N'公安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2136', N'421023', N'421000', N'监利县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2137', N'421024', N'421000', N'江陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2138', N'421081', N'421000', N'石首市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2139', N'421083', N'421000', N'洪湖市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2140', N'421087', N'421000', N'松滋市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2141', N'421101', N'421100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2142', N'421102', N'421100', N'黄州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2143', N'421121', N'421100', N'团风县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2144', N'421122', N'421100', N'红安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2145', N'421123', N'421100', N'罗田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2146', N'421124', N'421100', N'英山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2147', N'421125', N'421100', N'浠水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2148', N'421126', N'421100', N'蕲春县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2149', N'421127', N'421100', N'黄梅县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2150', N'421181', N'421100', N'麻城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2151', N'421182', N'421100', N'武穴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2152', N'421201', N'421200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2153', N'421202', N'421200', N'咸安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2154', N'421221', N'421200', N'嘉鱼县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2155', N'421222', N'421200', N'通城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2156', N'421223', N'421200', N'崇阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2157', N'421224', N'421200', N'通山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2158', N'421281', N'421200', N'赤壁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2159', N'421301', N'421300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2160', N'421302', N'421300', N'曾都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2161', N'421381', N'421300', N'广水市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2162', N'422801', N'422800', N'恩施市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2163', N'422802', N'422800', N'利川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2164', N'422822', N'422800', N'建始县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2165', N'422823', N'422800', N'巴东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2166', N'422825', N'422800', N'宣恩县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2167', N'422826', N'422800', N'咸丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2168', N'422827', N'422800', N'来凤县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2169', N'422828', N'422800', N'鹤峰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2170', N'429004', N'429000', N'仙桃市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2171', N'429005', N'429000', N'潜江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2172', N'429006', N'429000', N'天门市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2173', N'429021', N'429000', N'神农架林区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2174', N'430101', N'430100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2175', N'430102', N'430100', N'芙蓉区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2176', N'430103', N'430100', N'天心区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2177', N'430104', N'430100', N'岳麓区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2178', N'430105', N'430100', N'开福区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2179', N'430111', N'430100', N'雨花区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2180', N'430121', N'430100', N'长沙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2181', N'430122', N'430100', N'望城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2182', N'430124', N'430100', N'宁乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2183', N'430181', N'430100', N'浏阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2184', N'430201', N'430200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2185', N'430202', N'430200', N'荷塘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2186', N'430203', N'430200', N'芦淞区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2187', N'430204', N'430200', N'石峰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2188', N'430211', N'430200', N'天元区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2189', N'430221', N'430200', N'株洲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2190', N'430223', N'430200', N'攸　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2191', N'430224', N'430200', N'茶陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2192', N'430225', N'430200', N'炎陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2193', N'430281', N'430200', N'醴陵市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2194', N'430301', N'430300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2195', N'430302', N'430300', N'雨湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2196', N'430304', N'430300', N'岳塘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2197', N'430321', N'430300', N'湘潭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2198', N'430381', N'430300', N'湘乡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2199', N'430382', N'430300', N'韶山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2200', N'430401', N'430400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2201', N'430405', N'430400', N'珠晖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2202', N'430406', N'430400', N'雁峰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2203', N'430407', N'430400', N'石鼓区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2204', N'430408', N'430400', N'蒸湘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2205', N'430412', N'430400', N'南岳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2206', N'430421', N'430400', N'衡阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2207', N'430422', N'430400', N'衡南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2208', N'430423', N'430400', N'衡山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2209', N'430424', N'430400', N'衡东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2210', N'430426', N'430400', N'祁东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2211', N'430481', N'430400', N'耒阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2212', N'430482', N'430400', N'常宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2213', N'430501', N'430500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2214', N'430502', N'430500', N'双清区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2215', N'430503', N'430500', N'大祥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2216', N'430511', N'430500', N'北塔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2217', N'430521', N'430500', N'邵东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2218', N'430522', N'430500', N'新邵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2219', N'430523', N'430500', N'邵阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2220', N'430524', N'430500', N'隆回县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2221', N'430525', N'430500', N'洞口县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2222', N'430527', N'430500', N'绥宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2223', N'430528', N'430500', N'新宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2224', N'430529', N'430500', N'城步苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2225', N'430581', N'430500', N'武冈市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2226', N'430601', N'430600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2227', N'430602', N'430600', N'岳阳楼区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2228', N'430603', N'430600', N'云溪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2229', N'430611', N'430600', N'君山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2230', N'430621', N'430600', N'岳阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2231', N'430623', N'430600', N'华容县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2232', N'430624', N'430600', N'湘阴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2233', N'430626', N'430600', N'平江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2234', N'430681', N'430600', N'汨罗市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2235', N'430682', N'430600', N'临湘市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2236', N'430701', N'430700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2237', N'430702', N'430700', N'武陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2238', N'430703', N'430700', N'鼎城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2239', N'430721', N'430700', N'安乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2240', N'430722', N'430700', N'汉寿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2241', N'430723', N'430700', N'澧　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2242', N'430724', N'430700', N'临澧县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2243', N'430725', N'430700', N'桃源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2244', N'430726', N'430700', N'石门县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2245', N'430781', N'430700', N'津市市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2246', N'430801', N'430800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2247', N'430802', N'430800', N'永定区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2248', N'430811', N'430800', N'武陵源区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2249', N'430821', N'430800', N'慈利县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2250', N'430822', N'430800', N'桑植县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2251', N'430901', N'430900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2252', N'430902', N'430900', N'资阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2253', N'430903', N'430900', N'赫山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2254', N'430921', N'430900', N'南　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2255', N'430922', N'430900', N'桃江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2256', N'430923', N'430900', N'安化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2257', N'430981', N'430900', N'沅江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2258', N'431001', N'431000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2259', N'431002', N'431000', N'北湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2260', N'431003', N'431000', N'苏仙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2261', N'431021', N'431000', N'桂阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2262', N'431022', N'431000', N'宜章县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2263', N'431023', N'431000', N'永兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2264', N'431024', N'431000', N'嘉禾县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2265', N'431025', N'431000', N'临武县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2266', N'431026', N'431000', N'汝城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2267', N'431027', N'431000', N'桂东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2268', N'431028', N'431000', N'安仁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2269', N'431081', N'431000', N'资兴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2270', N'431101', N'431100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2271', N'431102', N'431100', N'芝山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2272', N'431103', N'431100', N'冷水滩区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2273', N'431121', N'431100', N'祁阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2274', N'431122', N'431100', N'东安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2275', N'431123', N'431100', N'双牌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2276', N'431124', N'431100', N'道　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2277', N'431125', N'431100', N'江永县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2278', N'431126', N'431100', N'宁远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2279', N'431127', N'431100', N'蓝山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2280', N'431128', N'431100', N'新田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2281', N'431129', N'431100', N'江华瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2282', N'431201', N'431200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2283', N'431202', N'431200', N'鹤城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2284', N'431221', N'431200', N'中方县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2285', N'431222', N'431200', N'沅陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2286', N'431223', N'431200', N'辰溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2287', N'431224', N'431200', N'溆浦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2288', N'431225', N'431200', N'会同县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2289', N'431226', N'431200', N'麻阳苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2290', N'431227', N'431200', N'新晃侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2291', N'431228', N'431200', N'芷江侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2292', N'431229', N'431200', N'靖州苗族侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2293', N'431230', N'431200', N'通道侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2294', N'431281', N'431200', N'洪江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2295', N'431301', N'431300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2296', N'431302', N'431300', N'娄星区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2297', N'431321', N'431300', N'双峰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2298', N'431322', N'431300', N'新化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2299', N'431381', N'431300', N'冷水江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2300', N'431382', N'431300', N'涟源市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2301', N'433101', N'433100', N'吉首市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2302', N'433122', N'433100', N'泸溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2303', N'433123', N'433100', N'凤凰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2304', N'433124', N'433100', N'花垣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2305', N'433125', N'433100', N'保靖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2306', N'433126', N'433100', N'古丈县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2307', N'433127', N'433100', N'永顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2308', N'433130', N'433100', N'龙山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2309', N'440101', N'440100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2310', N'440102', N'440100', N'东山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2311', N'440103', N'440100', N'荔湾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2312', N'440104', N'440100', N'越秀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2313', N'440105', N'440100', N'海珠区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2314', N'440106', N'440100', N'天河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2315', N'440107', N'440100', N'芳村区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2316', N'440111', N'440100', N'白云区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2317', N'440112', N'440100', N'黄埔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2318', N'440113', N'440100', N'番禺区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2319', N'440114', N'440100', N'花都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2320', N'440183', N'440100', N'增城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2321', N'440184', N'440100', N'从化市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2322', N'440201', N'440200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2323', N'440203', N'440200', N'武江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2324', N'440204', N'440200', N'浈江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2325', N'440205', N'440200', N'曲江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2326', N'440222', N'440200', N'始兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2327', N'440224', N'440200', N'仁化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2328', N'440229', N'440200', N'翁源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2329', N'440232', N'440200', N'乳源瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2330', N'440233', N'440200', N'新丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2331', N'440281', N'440200', N'乐昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2332', N'440282', N'440200', N'南雄市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2333', N'440301', N'440300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2334', N'440303', N'440300', N'罗湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2335', N'440304', N'440300', N'福田区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2336', N'440305', N'440300', N'南山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2337', N'440306', N'440300', N'宝安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2338', N'440307', N'440300', N'龙岗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2339', N'440308', N'440300', N'盐田区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2340', N'440401', N'440400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2341', N'440402', N'440400', N'香洲区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2342', N'440403', N'440400', N'斗门区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2343', N'440404', N'440400', N'金湾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2344', N'440501', N'440500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2345', N'440507', N'440500', N'龙湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2346', N'440511', N'440500', N'金平区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2347', N'440512', N'440500', N'濠江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2348', N'440513', N'440500', N'潮阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2349', N'440514', N'440500', N'潮南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2350', N'440515', N'440500', N'澄海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2351', N'440523', N'440500', N'南澳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2352', N'440601', N'440600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2353', N'440604', N'440600', N'禅城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2354', N'440605', N'440600', N'南海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2355', N'440606', N'440600', N'顺德区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2356', N'440607', N'440600', N'三水区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2357', N'440608', N'440600', N'高明区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2358', N'440701', N'440700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2359', N'440703', N'440700', N'蓬江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2360', N'440704', N'440700', N'江海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2361', N'440705', N'440700', N'新会区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2362', N'440781', N'440700', N'台山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2363', N'440783', N'440700', N'开平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2364', N'440784', N'440700', N'鹤山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2365', N'440785', N'440700', N'恩平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2366', N'440801', N'440800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2367', N'440802', N'440800', N'赤坎区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2368', N'440803', N'440800', N'霞山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2369', N'440804', N'440800', N'坡头区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2370', N'440811', N'440800', N'麻章区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2371', N'440823', N'440800', N'遂溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2372', N'440825', N'440800', N'徐闻县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2373', N'440881', N'440800', N'廉江市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2374', N'440882', N'440800', N'雷州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2375', N'440883', N'440800', N'吴川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2376', N'440901', N'440900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2377', N'440902', N'440900', N'茂南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2378', N'440903', N'440900', N'茂港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2379', N'440923', N'440900', N'电白县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2380', N'440981', N'440900', N'高州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2381', N'440982', N'440900', N'化州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2382', N'440983', N'440900', N'信宜市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2383', N'441201', N'441200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2384', N'441202', N'441200', N'端州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2385', N'441203', N'441200', N'鼎湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2386', N'441223', N'441200', N'广宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2387', N'441224', N'441200', N'怀集县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2388', N'441225', N'441200', N'封开县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2389', N'441226', N'441200', N'德庆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2390', N'441283', N'441200', N'高要市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2391', N'441284', N'441200', N'四会市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2392', N'441301', N'441300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2393', N'441302', N'441300', N'惠城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2394', N'441303', N'441300', N'惠阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2395', N'441322', N'441300', N'博罗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2396', N'441323', N'441300', N'惠东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2397', N'441324', N'441300', N'龙门县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2398', N'441401', N'441400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2399', N'441402', N'441400', N'梅江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2400', N'441421', N'441400', N'梅　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2401', N'441422', N'441400', N'大埔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2402', N'441423', N'441400', N'丰顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2403', N'441424', N'441400', N'五华县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2404', N'441426', N'441400', N'平远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2405', N'441427', N'441400', N'蕉岭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2406', N'441481', N'441400', N'兴宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2407', N'441501', N'441500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2408', N'441502', N'441500', N'城　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2409', N'441521', N'441500', N'海丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2410', N'441523', N'441500', N'陆河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2411', N'441581', N'441500', N'陆丰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2412', N'441601', N'441600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2413', N'441602', N'441600', N'源城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2414', N'441621', N'441600', N'紫金县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2415', N'441622', N'441600', N'龙川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2416', N'441623', N'441600', N'连平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2417', N'441624', N'441600', N'和平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2418', N'441625', N'441600', N'东源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2419', N'441701', N'441700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2420', N'441702', N'441700', N'江城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2421', N'441721', N'441700', N'阳西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2422', N'441723', N'441700', N'阳东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2423', N'441781', N'441700', N'阳春市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2424', N'441801', N'441800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2425', N'441802', N'441800', N'清城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2426', N'441821', N'441800', N'佛冈县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2427', N'441823', N'441800', N'阳山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2428', N'441825', N'441800', N'连山壮族瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2429', N'441826', N'441800', N'连南瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2430', N'441827', N'441800', N'清新县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2431', N'441881', N'441800', N'英德市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2432', N'441882', N'441800', N'连州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2433', N'445101', N'445100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2434', N'445102', N'445100', N'湘桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2435', N'445121', N'445100', N'潮安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2436', N'445122', N'445100', N'饶平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2437', N'445201', N'445200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2438', N'445202', N'445200', N'榕城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2439', N'445221', N'445200', N'揭东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2440', N'445222', N'445200', N'揭西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2441', N'445224', N'445200', N'惠来县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2442', N'445281', N'445200', N'普宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2443', N'445301', N'445300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2444', N'445302', N'445300', N'云城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2445', N'445321', N'445300', N'新兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2446', N'445322', N'445300', N'郁南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2447', N'445323', N'445300', N'云安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2448', N'445381', N'445300', N'罗定市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2449', N'450101', N'450100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2450', N'450102', N'450100', N'兴宁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2451', N'450103', N'450100', N'青秀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2452', N'450105', N'450100', N'江南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2453', N'450107', N'450100', N'西乡塘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2454', N'450108', N'450100', N'良庆区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2455', N'450109', N'450100', N'邕宁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2456', N'450122', N'450100', N'武鸣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2457', N'450123', N'450100', N'隆安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2458', N'450124', N'450100', N'马山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2459', N'450125', N'450100', N'上林县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2460', N'450126', N'450100', N'宾阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2461', N'450127', N'450100', N'横　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2462', N'450201', N'450200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2463', N'450202', N'450200', N'城中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2464', N'450203', N'450200', N'鱼峰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2465', N'450204', N'450200', N'柳南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2466', N'450205', N'450200', N'柳北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2467', N'450221', N'450200', N'柳江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2468', N'450222', N'450200', N'柳城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2469', N'450223', N'450200', N'鹿寨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2470', N'450224', N'450200', N'融安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2471', N'450225', N'450200', N'融水苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2472', N'450226', N'450200', N'三江侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2473', N'450301', N'450300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2474', N'450302', N'450300', N'秀峰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2475', N'450303', N'450300', N'叠彩区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2476', N'450304', N'450300', N'象山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2477', N'450305', N'450300', N'七星区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2478', N'450311', N'450300', N'雁山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2479', N'450321', N'450300', N'阳朔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2480', N'450322', N'450300', N'临桂县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2481', N'450323', N'450300', N'灵川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2482', N'450324', N'450300', N'全州县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2483', N'450325', N'450300', N'兴安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2484', N'450326', N'450300', N'永福县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2485', N'450327', N'450300', N'灌阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2486', N'450328', N'450300', N'龙胜各族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2487', N'450329', N'450300', N'资源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2488', N'450330', N'450300', N'平乐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2489', N'450331', N'450300', N'荔蒲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2490', N'450332', N'450300', N'恭城瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2491', N'450401', N'450400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2492', N'450403', N'450400', N'万秀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2493', N'450404', N'450400', N'蝶山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2494', N'450405', N'450400', N'长洲区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2495', N'450421', N'450400', N'苍梧县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2496', N'450422', N'450400', N'藤　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2497', N'450423', N'450400', N'蒙山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2498', N'450481', N'450400', N'岑溪市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2499', N'450501', N'450500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2500', N'450502', N'450500', N'海城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2501', N'450503', N'450500', N'银海区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2502', N'450512', N'450500', N'铁山港区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2503', N'450521', N'450500', N'合浦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2504', N'450601', N'450600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2505', N'450602', N'450600', N'港口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2506', N'450603', N'450600', N'防城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2507', N'450621', N'450600', N'上思县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2508', N'450681', N'450600', N'东兴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2509', N'450701', N'450700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2510', N'450702', N'450700', N'钦南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2511', N'450703', N'450700', N'钦北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2512', N'450721', N'450700', N'灵山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2513', N'450722', N'450700', N'浦北县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2514', N'450801', N'450800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2515', N'450802', N'450800', N'港北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2516', N'450803', N'450800', N'港南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2517', N'450804', N'450800', N'覃塘区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2518', N'450821', N'450800', N'平南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2519', N'450881', N'450800', N'桂平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2520', N'450901', N'450900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2521', N'450902', N'450900', N'玉州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2522', N'450921', N'450900', N'容　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2523', N'450922', N'450900', N'陆川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2524', N'450923', N'450900', N'博白县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2525', N'450924', N'450900', N'兴业县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2526', N'450981', N'450900', N'北流市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2527', N'451001', N'451000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2528', N'451002', N'451000', N'右江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2529', N'451021', N'451000', N'田阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2530', N'451022', N'451000', N'田东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2531', N'451023', N'451000', N'平果县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2532', N'451024', N'451000', N'德保县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2533', N'451025', N'451000', N'靖西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2534', N'451026', N'451000', N'那坡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2535', N'451027', N'451000', N'凌云县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2536', N'451028', N'451000', N'乐业县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2537', N'451029', N'451000', N'田林县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2538', N'451030', N'451000', N'西林县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2539', N'451031', N'451000', N'隆林各族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2540', N'451101', N'451100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2541', N'451102', N'451100', N'八步区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2542', N'451121', N'451100', N'昭平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2543', N'451122', N'451100', N'钟山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2544', N'451123', N'451100', N'富川瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2545', N'451201', N'451200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2546', N'451202', N'451200', N'金城江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2547', N'451221', N'451200', N'南丹县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2548', N'451222', N'451200', N'天峨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2549', N'451223', N'451200', N'凤山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2550', N'451224', N'451200', N'东兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2551', N'451225', N'451200', N'罗城仫佬族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2552', N'451226', N'451200', N'环江毛南族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2553', N'451227', N'451200', N'巴马瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2554', N'451228', N'451200', N'都安瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2555', N'451229', N'451200', N'大化瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2556', N'451281', N'451200', N'宜州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2557', N'451301', N'451300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2558', N'451302', N'451300', N'兴宾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2559', N'451321', N'451300', N'忻城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2560', N'451322', N'451300', N'象州县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2561', N'451323', N'451300', N'武宣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2562', N'451324', N'451300', N'金秀瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2563', N'451381', N'451300', N'合山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2564', N'451401', N'451400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2565', N'451402', N'451400', N'江洲区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2566', N'451421', N'451400', N'扶绥县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2567', N'451422', N'451400', N'宁明县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2568', N'451423', N'451400', N'龙州县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2569', N'451424', N'451400', N'大新县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2570', N'451425', N'451400', N'天等县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2571', N'451481', N'451400', N'凭祥市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2572', N'460101', N'460100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2573', N'460105', N'460100', N'秀英区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2574', N'460106', N'460100', N'龙华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2575', N'460107', N'460100', N'琼山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2576', N'460108', N'460100', N'美兰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2577', N'460201', N'460200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2578', N'469001', N'469000', N'五指山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2579', N'469002', N'469000', N'琼海市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2580', N'469003', N'469000', N'儋州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2581', N'469005', N'469000', N'文昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2582', N'469006', N'469000', N'万宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2583', N'469007', N'469000', N'东方市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2584', N'469025', N'469000', N'定安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2585', N'469026', N'469000', N'屯昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2586', N'469027', N'469000', N'澄迈县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2587', N'469028', N'469000', N'临高县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2588', N'469030', N'469000', N'白沙黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2589', N'469031', N'469000', N'昌江黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2590', N'469033', N'469000', N'乐东黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2591', N'469034', N'469000', N'陵水黎族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2592', N'469035', N'469000', N'保亭黎族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2593', N'469036', N'469000', N'琼中黎族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2594', N'469037', N'469000', N'西沙群岛')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2595', N'469038', N'469000', N'南沙群岛')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2596', N'469039', N'469000', N'中沙群岛的岛礁及其海域')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2597', N'500101', N'500100', N'万州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2598', N'500102', N'500100', N'涪陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2599', N'500103', N'500100', N'渝中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2600', N'500104', N'500100', N'大渡口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2601', N'500105', N'500100', N'江北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2602', N'500106', N'500100', N'沙坪坝区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2603', N'500107', N'500100', N'九龙坡区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2604', N'500108', N'500100', N'南岸区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2605', N'500109', N'500100', N'北碚区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2606', N'500110', N'500100', N'万盛区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2607', N'500111', N'500100', N'双桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2608', N'500112', N'500100', N'渝北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2609', N'500113', N'500100', N'巴南区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2610', N'500114', N'500100', N'黔江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2611', N'500115', N'500100', N'长寿区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2612', N'500222', N'500200', N'綦江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2613', N'500223', N'500200', N'潼南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2614', N'500224', N'500200', N'铜梁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2615', N'500225', N'500200', N'大足县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2616', N'500226', N'500200', N'荣昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2617', N'500227', N'500200', N'璧山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2618', N'500228', N'500200', N'梁平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2619', N'500229', N'500200', N'城口县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2620', N'500230', N'500200', N'丰都县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2621', N'500231', N'500200', N'垫江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2622', N'500232', N'500200', N'武隆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2623', N'500233', N'500200', N'忠　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2624', N'500234', N'500200', N'开　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2625', N'500235', N'500200', N'云阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2626', N'500236', N'500200', N'奉节县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2627', N'500237', N'500200', N'巫山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2628', N'500238', N'500200', N'巫溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2629', N'500240', N'500200', N'石柱土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2630', N'500241', N'500200', N'秀山土家族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2631', N'500242', N'500200', N'酉阳土家族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2632', N'500243', N'500200', N'彭水苗族土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2633', N'500381', N'500300', N'江津市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2634', N'500382', N'500300', N'合川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2635', N'500383', N'500300', N'永川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2636', N'500384', N'500300', N'南川市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2637', N'510101', N'510100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2638', N'510104', N'510100', N'锦江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2639', N'510105', N'510100', N'青羊区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2640', N'510106', N'510100', N'金牛区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2641', N'510107', N'510100', N'武侯区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2642', N'510108', N'510100', N'成华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2643', N'510112', N'510100', N'龙泉驿区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2644', N'510113', N'510100', N'青白江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2645', N'510114', N'510100', N'新都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2646', N'510115', N'510100', N'温江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2647', N'510121', N'510100', N'金堂县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2648', N'510122', N'510100', N'双流县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2649', N'510124', N'510100', N'郫　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2650', N'510129', N'510100', N'大邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2651', N'510131', N'510100', N'蒲江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2652', N'510132', N'510100', N'新津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2653', N'510181', N'510100', N'都江堰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2654', N'510182', N'510100', N'彭州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2655', N'510183', N'510100', N'邛崃市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2656', N'510184', N'510100', N'崇州市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2657', N'510301', N'510300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2658', N'510302', N'510300', N'自流井区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2659', N'510303', N'510300', N'贡井区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2660', N'510304', N'510300', N'大安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2661', N'510311', N'510300', N'沿滩区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2662', N'510321', N'510300', N'荣　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2663', N'510322', N'510300', N'富顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2664', N'510401', N'510400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2665', N'510402', N'510400', N'东　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2666', N'510403', N'510400', N'西　区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2667', N'510411', N'510400', N'仁和区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2668', N'510421', N'510400', N'米易县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2669', N'510422', N'510400', N'盐边县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2670', N'510501', N'510500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2671', N'510502', N'510500', N'江阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2672', N'510503', N'510500', N'纳溪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2673', N'510504', N'510500', N'龙马潭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2674', N'510521', N'510500', N'泸　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2675', N'510522', N'510500', N'合江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2676', N'510524', N'510500', N'叙永县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2677', N'510525', N'510500', N'古蔺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2678', N'510601', N'510600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2679', N'510603', N'510600', N'旌阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2680', N'510623', N'510600', N'中江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2681', N'510626', N'510600', N'罗江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2682', N'510681', N'510600', N'广汉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2683', N'510682', N'510600', N'什邡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2684', N'510683', N'510600', N'绵竹市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2685', N'510701', N'510700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2686', N'510703', N'510700', N'涪城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2687', N'510704', N'510700', N'游仙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2688', N'510722', N'510700', N'三台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2689', N'510723', N'510700', N'盐亭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2690', N'510724', N'510700', N'安　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2691', N'510725', N'510700', N'梓潼县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2692', N'510726', N'510700', N'北川羌族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2693', N'510727', N'510700', N'平武县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2694', N'510781', N'510700', N'江油市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2695', N'510801', N'510800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2696', N'510802', N'510800', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2697', N'510811', N'510800', N'元坝区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2698', N'510812', N'510800', N'朝天区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2699', N'510821', N'510800', N'旺苍县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2700', N'510822', N'510800', N'青川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2701', N'510823', N'510800', N'剑阁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2702', N'510824', N'510800', N'苍溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2703', N'510901', N'510900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2704', N'510903', N'510900', N'船山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2705', N'510904', N'510900', N'安居区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2706', N'510921', N'510900', N'蓬溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2707', N'510922', N'510900', N'射洪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2708', N'510923', N'510900', N'大英县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2709', N'511001', N'511000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2710', N'511002', N'511000', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2711', N'511011', N'511000', N'东兴区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2712', N'511024', N'511000', N'威远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2713', N'511025', N'511000', N'资中县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2714', N'511028', N'511000', N'隆昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2715', N'511101', N'511100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2716', N'511102', N'511100', N'市中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2717', N'511111', N'511100', N'沙湾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2718', N'511112', N'511100', N'五通桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2719', N'511113', N'511100', N'金口河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2720', N'511123', N'511100', N'犍为县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2721', N'511124', N'511100', N'井研县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2722', N'511126', N'511100', N'夹江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2723', N'511129', N'511100', N'沐川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2724', N'511132', N'511100', N'峨边彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2725', N'511133', N'511100', N'马边彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2726', N'511181', N'511100', N'峨眉山市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2727', N'511301', N'511300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2728', N'511302', N'511300', N'顺庆区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2729', N'511303', N'511300', N'高坪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2730', N'511304', N'511300', N'嘉陵区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2731', N'511321', N'511300', N'南部县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2732', N'511322', N'511300', N'营山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2733', N'511323', N'511300', N'蓬安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2734', N'511324', N'511300', N'仪陇县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2735', N'511325', N'511300', N'西充县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2736', N'511381', N'511300', N'阆中市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2737', N'511401', N'511400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2738', N'511402', N'511400', N'东坡区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2739', N'511421', N'511400', N'仁寿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2740', N'511422', N'511400', N'彭山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2741', N'511423', N'511400', N'洪雅县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2742', N'511424', N'511400', N'丹棱县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2743', N'511425', N'511400', N'青神县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2744', N'511501', N'511500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2745', N'511502', N'511500', N'翠屏区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2746', N'511521', N'511500', N'宜宾县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2747', N'511522', N'511500', N'南溪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2748', N'511523', N'511500', N'江安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2749', N'511524', N'511500', N'长宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2750', N'511525', N'511500', N'高　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2751', N'511526', N'511500', N'珙　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2752', N'511527', N'511500', N'筠连县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2753', N'511528', N'511500', N'兴文县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2754', N'511529', N'511500', N'屏山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2755', N'511601', N'511600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2756', N'511602', N'511600', N'广安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2757', N'511621', N'511600', N'岳池县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2758', N'511622', N'511600', N'武胜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2759', N'511623', N'511600', N'邻水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2760', N'511681', N'511600', N'华莹市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2761', N'511701', N'511700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2762', N'511702', N'511700', N'通川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2763', N'511721', N'511700', N'达　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2764', N'511722', N'511700', N'宣汉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2765', N'511723', N'511700', N'开江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2766', N'511724', N'511700', N'大竹县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2767', N'511725', N'511700', N'渠　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2768', N'511781', N'511700', N'万源市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2769', N'511801', N'511800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2770', N'511802', N'511800', N'雨城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2771', N'511821', N'511800', N'名山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2772', N'511822', N'511800', N'荥经县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2773', N'511823', N'511800', N'汉源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2774', N'511824', N'511800', N'石棉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2775', N'511825', N'511800', N'天全县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2776', N'511826', N'511800', N'芦山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2777', N'511827', N'511800', N'宝兴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2778', N'511901', N'511900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2779', N'511902', N'511900', N'巴州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2780', N'511921', N'511900', N'通江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2781', N'511922', N'511900', N'南江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2782', N'511923', N'511900', N'平昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2783', N'512001', N'512000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2784', N'512002', N'512000', N'雁江区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2785', N'512021', N'512000', N'安岳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2786', N'512022', N'512000', N'乐至县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2787', N'512081', N'512000', N'简阳市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2788', N'513221', N'513200', N'汶川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2789', N'513222', N'513200', N'理　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2790', N'513223', N'513200', N'茂　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2791', N'513224', N'513200', N'松潘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2792', N'513225', N'513200', N'九寨沟县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2793', N'513226', N'513200', N'金川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2794', N'513227', N'513200', N'小金县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2795', N'513228', N'513200', N'黑水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2796', N'513229', N'513200', N'马尔康县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2797', N'513230', N'513200', N'壤塘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2798', N'513231', N'513200', N'阿坝县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2799', N'513232', N'513200', N'若尔盖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2800', N'513233', N'513200', N'红原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2801', N'513321', N'513300', N'康定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2802', N'513322', N'513300', N'泸定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2803', N'513323', N'513300', N'丹巴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2804', N'513324', N'513300', N'九龙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2805', N'513325', N'513300', N'雅江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2806', N'513326', N'513300', N'道孚县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2807', N'513327', N'513300', N'炉霍县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2808', N'513328', N'513300', N'甘孜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2809', N'513329', N'513300', N'新龙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2810', N'513330', N'513300', N'德格县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2811', N'513331', N'513300', N'白玉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2812', N'513332', N'513300', N'石渠县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2813', N'513333', N'513300', N'色达县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2814', N'513334', N'513300', N'理塘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2815', N'513335', N'513300', N'巴塘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2816', N'513336', N'513300', N'乡城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2817', N'513337', N'513300', N'稻城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2818', N'513338', N'513300', N'得荣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2819', N'513401', N'513400', N'西昌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2820', N'513422', N'513400', N'木里藏族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2821', N'513423', N'513400', N'盐源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2822', N'513424', N'513400', N'德昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2823', N'513425', N'513400', N'会理县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2824', N'513426', N'513400', N'会东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2825', N'513427', N'513400', N'宁南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2826', N'513428', N'513400', N'普格县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2827', N'513429', N'513400', N'布拖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2828', N'513430', N'513400', N'金阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2829', N'513431', N'513400', N'昭觉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2830', N'513432', N'513400', N'喜德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2831', N'513433', N'513400', N'冕宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2832', N'513434', N'513400', N'越西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2833', N'513435', N'513400', N'甘洛县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2834', N'513436', N'513400', N'美姑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2835', N'513437', N'513400', N'雷波县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2836', N'520101', N'520100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2837', N'520102', N'520100', N'南明区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2838', N'520103', N'520100', N'云岩区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2839', N'520111', N'520100', N'花溪区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2840', N'520112', N'520100', N'乌当区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2841', N'520113', N'520100', N'白云区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2842', N'520114', N'520100', N'小河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2843', N'520121', N'520100', N'开阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2844', N'520122', N'520100', N'息烽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2845', N'520123', N'520100', N'修文县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2846', N'520181', N'520100', N'清镇市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2847', N'520201', N'520200', N'钟山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2848', N'520203', N'520200', N'六枝特区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2849', N'520221', N'520200', N'水城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2850', N'520222', N'520200', N'盘　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2851', N'520301', N'520300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2852', N'520302', N'520300', N'红花岗区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2853', N'520303', N'520300', N'汇川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2854', N'520321', N'520300', N'遵义县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2855', N'520322', N'520300', N'桐梓县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2856', N'520323', N'520300', N'绥阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2857', N'520324', N'520300', N'正安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2858', N'520325', N'520300', N'道真仡佬族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2859', N'520326', N'520300', N'务川仡佬族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2860', N'520327', N'520300', N'凤冈县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2861', N'520328', N'520300', N'湄潭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2862', N'520329', N'520300', N'余庆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2863', N'520330', N'520300', N'习水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2864', N'520381', N'520300', N'赤水市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2865', N'520382', N'520300', N'仁怀市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2866', N'520401', N'520400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2867', N'520402', N'520400', N'西秀区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2868', N'520421', N'520400', N'平坝县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2869', N'520422', N'520400', N'普定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2870', N'520423', N'520400', N'镇宁布依族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2871', N'520424', N'520400', N'关岭布依族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2872', N'520425', N'520400', N'紫云苗族布依族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2873', N'522201', N'522200', N'铜仁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2874', N'522222', N'522200', N'江口县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2875', N'522223', N'522200', N'玉屏侗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2876', N'522224', N'522200', N'石阡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2877', N'522225', N'522200', N'思南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2878', N'522226', N'522200', N'印江土家族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2879', N'522227', N'522200', N'德江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2880', N'522228', N'522200', N'沿河土家族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2881', N'522229', N'522200', N'松桃苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2882', N'522230', N'522200', N'万山特区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2883', N'522301', N'522300', N'兴义市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2884', N'522322', N'522300', N'兴仁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2885', N'522323', N'522300', N'普安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2886', N'522324', N'522300', N'晴隆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2887', N'522325', N'522300', N'贞丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2888', N'522326', N'522300', N'望谟县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2889', N'522327', N'522300', N'册亨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2890', N'522328', N'522300', N'安龙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2891', N'522401', N'522400', N'毕节市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2892', N'522422', N'522400', N'大方县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2893', N'522423', N'522400', N'黔西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2894', N'522424', N'522400', N'金沙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2895', N'522425', N'522400', N'织金县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2896', N'522426', N'522400', N'纳雍县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2897', N'522427', N'522400', N'威宁彝族回族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2898', N'522428', N'522400', N'赫章县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2899', N'522601', N'522600', N'凯里市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2900', N'522622', N'522600', N'黄平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2901', N'522623', N'522600', N'施秉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2902', N'522624', N'522600', N'三穗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2903', N'522625', N'522600', N'镇远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2904', N'522626', N'522600', N'岑巩县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2905', N'522627', N'522600', N'天柱县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2906', N'522628', N'522600', N'锦屏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2907', N'522629', N'522600', N'剑河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2908', N'522630', N'522600', N'台江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2909', N'522631', N'522600', N'黎平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2910', N'522632', N'522600', N'榕江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2911', N'522633', N'522600', N'从江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2912', N'522634', N'522600', N'雷山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2913', N'522635', N'522600', N'麻江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2914', N'522636', N'522600', N'丹寨县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2915', N'522701', N'522700', N'都匀市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2916', N'522702', N'522700', N'福泉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2917', N'522722', N'522700', N'荔波县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2918', N'522723', N'522700', N'贵定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2919', N'522725', N'522700', N'瓮安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2920', N'522726', N'522700', N'独山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2921', N'522727', N'522700', N'平塘县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2922', N'522728', N'522700', N'罗甸县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2923', N'522729', N'522700', N'长顺县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2924', N'522730', N'522700', N'龙里县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2925', N'522731', N'522700', N'惠水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2926', N'522732', N'522700', N'三都水族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2927', N'530101', N'530100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2928', N'530102', N'530100', N'五华区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2929', N'530103', N'530100', N'盘龙区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2930', N'530111', N'530100', N'官渡区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2931', N'530112', N'530100', N'西山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2932', N'530113', N'530100', N'东川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2933', N'530121', N'530100', N'呈贡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2934', N'530122', N'530100', N'晋宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2935', N'530124', N'530100', N'富民县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2936', N'530125', N'530100', N'宜良县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2937', N'530126', N'530100', N'石林彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2938', N'530127', N'530100', N'嵩明县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2939', N'530128', N'530100', N'禄劝彝族苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2940', N'530129', N'530100', N'寻甸回族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2941', N'530181', N'530100', N'安宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2942', N'530301', N'530300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2943', N'530302', N'530300', N'麒麟区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2944', N'530321', N'530300', N'马龙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2945', N'530322', N'530300', N'陆良县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2946', N'530323', N'530300', N'师宗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2947', N'530324', N'530300', N'罗平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2948', N'530325', N'530300', N'富源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2949', N'530326', N'530300', N'会泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2950', N'530328', N'530300', N'沾益县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2951', N'530381', N'530300', N'宣威市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2952', N'530401', N'530400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2953', N'530402', N'530400', N'红塔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2954', N'530421', N'530400', N'江川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2955', N'530422', N'530400', N'澄江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2956', N'530423', N'530400', N'通海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2957', N'530424', N'530400', N'华宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2958', N'530425', N'530400', N'易门县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2959', N'530426', N'530400', N'峨山彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2960', N'530427', N'530400', N'新平彝族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2961', N'530428', N'530400', N'元江哈尼族彝族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2962', N'530501', N'530500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2963', N'530502', N'530500', N'隆阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2964', N'530521', N'530500', N'施甸县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2965', N'530522', N'530500', N'腾冲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2966', N'530523', N'530500', N'龙陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2967', N'530524', N'530500', N'昌宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2968', N'530601', N'530600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2969', N'530602', N'530600', N'昭阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2970', N'530621', N'530600', N'鲁甸县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2971', N'530622', N'530600', N'巧家县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2972', N'530623', N'530600', N'盐津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2973', N'530624', N'530600', N'大关县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2974', N'530625', N'530600', N'永善县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2975', N'530626', N'530600', N'绥江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2976', N'530627', N'530600', N'镇雄县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2977', N'530628', N'530600', N'彝良县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2978', N'530629', N'530600', N'威信县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2979', N'530630', N'530600', N'水富县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2980', N'530701', N'530700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2981', N'530702', N'530700', N'古城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2982', N'530721', N'530700', N'玉龙纳西族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2983', N'530722', N'530700', N'永胜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2984', N'530723', N'530700', N'华坪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2985', N'530724', N'530700', N'宁蒗彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2986', N'530801', N'530800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2987', N'530802', N'530800', N'翠云区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2988', N'530821', N'530800', N'普洱哈尼族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2989', N'530822', N'530800', N'墨江哈尼族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2990', N'530823', N'530800', N'景东彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2991', N'530824', N'530800', N'景谷傣族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2992', N'530825', N'530800', N'镇沅彝族哈尼族拉祜族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2993', N'530826', N'530800', N'江城哈尼族彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2994', N'530827', N'530800', N'孟连傣族拉祜族佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2995', N'530828', N'530800', N'澜沧拉祜族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2996', N'530829', N'530800', N'西盟佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2997', N'530901', N'530900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2998', N'530902', N'530900', N'临翔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'2999', N'530921', N'530900', N'凤庆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3000', N'530922', N'530900', N'云　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3001', N'530923', N'530900', N'永德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3002', N'530924', N'530900', N'镇康县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3003', N'530925', N'530900', N'双江拉祜族佤族布朗族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3004', N'530926', N'530900', N'耿马傣族佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3005', N'530927', N'530900', N'沧源佤族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3006', N'532301', N'532300', N'楚雄市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3007', N'532322', N'532300', N'双柏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3008', N'532323', N'532300', N'牟定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3009', N'532324', N'532300', N'南华县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3010', N'532325', N'532300', N'姚安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3011', N'532326', N'532300', N'大姚县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3012', N'532327', N'532300', N'永仁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3013', N'532328', N'532300', N'元谋县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3014', N'532329', N'532300', N'武定县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3015', N'532331', N'532300', N'禄丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3016', N'532501', N'532500', N'个旧市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3017', N'532502', N'532500', N'开远市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3018', N'532522', N'532500', N'蒙自县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3019', N'532523', N'532500', N'屏边苗族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3020', N'532524', N'532500', N'建水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3021', N'532525', N'532500', N'石屏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3022', N'532526', N'532500', N'弥勒县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3023', N'532527', N'532500', N'泸西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3024', N'532528', N'532500', N'元阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3025', N'532529', N'532500', N'红河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3026', N'532530', N'532500', N'金平苗族瑶族傣族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3027', N'532531', N'532500', N'绿春县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3028', N'532532', N'532500', N'河口瑶族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3029', N'532621', N'532600', N'文山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3030', N'532622', N'532600', N'砚山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3031', N'532623', N'532600', N'西畴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3032', N'532624', N'532600', N'麻栗坡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3033', N'532625', N'532600', N'马关县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3034', N'532626', N'532600', N'丘北县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3035', N'532627', N'532600', N'广南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3036', N'532628', N'532600', N'富宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3037', N'532801', N'532800', N'景洪市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3038', N'532822', N'532800', N'勐海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3039', N'532823', N'532800', N'勐腊县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3040', N'532901', N'532900', N'大理市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3041', N'532922', N'532900', N'漾濞彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3042', N'532923', N'532900', N'祥云县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3043', N'532924', N'532900', N'宾川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3044', N'532925', N'532900', N'弥渡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3045', N'532926', N'532900', N'南涧彝族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3046', N'532927', N'532900', N'巍山彝族回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3047', N'532928', N'532900', N'永平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3048', N'532929', N'532900', N'云龙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3049', N'532930', N'532900', N'洱源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3050', N'532931', N'532900', N'剑川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3051', N'532932', N'532900', N'鹤庆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3052', N'533102', N'533100', N'瑞丽市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3053', N'533103', N'533100', N'潞西市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3054', N'533122', N'533100', N'梁河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3055', N'533123', N'533100', N'盈江县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3056', N'533124', N'533100', N'陇川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3057', N'533321', N'533300', N'泸水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3058', N'533323', N'533300', N'福贡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3059', N'533324', N'533300', N'贡山独龙族怒族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3060', N'533325', N'533300', N'兰坪白族普米族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3061', N'533421', N'533400', N'香格里拉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3062', N'533422', N'533400', N'德钦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3063', N'533423', N'533400', N'维西傈僳族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3064', N'540101', N'540100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3065', N'540102', N'540100', N'城关区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3066', N'540121', N'540100', N'林周县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3067', N'540122', N'540100', N'当雄县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3068', N'540123', N'540100', N'尼木县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3069', N'540124', N'540100', N'曲水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3070', N'540125', N'540100', N'堆龙德庆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3071', N'540126', N'540100', N'达孜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3072', N'540127', N'540100', N'墨竹工卡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3073', N'542121', N'542100', N'昌都县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3074', N'542122', N'542100', N'江达县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3075', N'542123', N'542100', N'贡觉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3076', N'542124', N'542100', N'类乌齐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3077', N'542125', N'542100', N'丁青县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3078', N'542126', N'542100', N'察雅县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3079', N'542127', N'542100', N'八宿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3080', N'542128', N'542100', N'左贡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3081', N'542129', N'542100', N'芒康县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3082', N'542132', N'542100', N'洛隆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3083', N'542133', N'542100', N'边坝县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3084', N'542221', N'542200', N'乃东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3085', N'542222', N'542200', N'扎囊县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3086', N'542223', N'542200', N'贡嘎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3087', N'542224', N'542200', N'桑日县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3088', N'542225', N'542200', N'琼结县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3089', N'542226', N'542200', N'曲松县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3090', N'542227', N'542200', N'措美县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3091', N'542228', N'542200', N'洛扎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3092', N'542229', N'542200', N'加查县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3093', N'542231', N'542200', N'隆子县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3094', N'542232', N'542200', N'错那县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3095', N'542233', N'542200', N'浪卡子县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3096', N'542301', N'542300', N'日喀则市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3097', N'542322', N'542300', N'南木林县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3098', N'542323', N'542300', N'江孜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3099', N'542324', N'542300', N'定日县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3100', N'542325', N'542300', N'萨迦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3101', N'542326', N'542300', N'拉孜县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3102', N'542327', N'542300', N'昂仁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3103', N'542328', N'542300', N'谢通门县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3104', N'542329', N'542300', N'白朗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3105', N'542330', N'542300', N'仁布县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3106', N'542331', N'542300', N'康马县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3107', N'542332', N'542300', N'定结县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3108', N'542333', N'542300', N'仲巴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3109', N'542334', N'542300', N'亚东县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3110', N'542335', N'542300', N'吉隆县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3111', N'542336', N'542300', N'聂拉木县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3112', N'542337', N'542300', N'萨嘎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3113', N'542338', N'542300', N'岗巴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3114', N'542421', N'542400', N'那曲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3115', N'542422', N'542400', N'嘉黎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3116', N'542423', N'542400', N'比如县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3117', N'542424', N'542400', N'聂荣县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3118', N'542425', N'542400', N'安多县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3119', N'542426', N'542400', N'申扎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3120', N'542427', N'542400', N'索　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3121', N'542428', N'542400', N'班戈县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3122', N'542429', N'542400', N'巴青县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3123', N'542430', N'542400', N'尼玛县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3124', N'542521', N'542500', N'普兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3125', N'542522', N'542500', N'札达县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3126', N'542523', N'542500', N'噶尔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3127', N'542524', N'542500', N'日土县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3128', N'542525', N'542500', N'革吉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3129', N'542526', N'542500', N'改则县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3130', N'542527', N'542500', N'措勤县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3131', N'542621', N'542600', N'林芝县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3132', N'542622', N'542600', N'工布江达县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3133', N'542623', N'542600', N'米林县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3134', N'542624', N'542600', N'墨脱县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3135', N'542625', N'542600', N'波密县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3136', N'542626', N'542600', N'察隅县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3137', N'542627', N'542600', N'朗　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3138', N'610101', N'610100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3139', N'610102', N'610100', N'新城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3140', N'610103', N'610100', N'碑林区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3141', N'610104', N'610100', N'莲湖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3142', N'610111', N'610100', N'灞桥区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3143', N'610112', N'610100', N'未央区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3144', N'610113', N'610100', N'雁塔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3145', N'610114', N'610100', N'阎良区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3146', N'610115', N'610100', N'临潼区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3147', N'610116', N'610100', N'长安区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3148', N'610122', N'610100', N'蓝田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3149', N'610124', N'610100', N'周至县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3150', N'610125', N'610100', N'户　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3151', N'610126', N'610100', N'高陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3152', N'610201', N'610200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3153', N'610202', N'610200', N'王益区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3154', N'610203', N'610200', N'印台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3155', N'610204', N'610200', N'耀州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3156', N'610222', N'610200', N'宜君县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3157', N'610301', N'610300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3158', N'610302', N'610300', N'渭滨区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3159', N'610303', N'610300', N'金台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3160', N'610304', N'610300', N'陈仓区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3161', N'610322', N'610300', N'凤翔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3162', N'610323', N'610300', N'岐山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3163', N'610324', N'610300', N'扶风县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3164', N'610326', N'610300', N'眉　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3165', N'610327', N'610300', N'陇　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3166', N'610328', N'610300', N'千阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3167', N'610329', N'610300', N'麟游县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3168', N'610330', N'610300', N'凤　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3169', N'610331', N'610300', N'太白县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3170', N'610401', N'610400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3171', N'610402', N'610400', N'秦都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3172', N'610403', N'610400', N'杨凌区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3173', N'610404', N'610400', N'渭城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3174', N'610422', N'610400', N'三原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3175', N'610423', N'610400', N'泾阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3176', N'610424', N'610400', N'乾　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3177', N'610425', N'610400', N'礼泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3178', N'610426', N'610400', N'永寿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3179', N'610427', N'610400', N'彬　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3180', N'610428', N'610400', N'长武县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3181', N'610429', N'610400', N'旬邑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3182', N'610430', N'610400', N'淳化县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3183', N'610431', N'610400', N'武功县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3184', N'610481', N'610400', N'兴平市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3185', N'610501', N'610500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3186', N'610502', N'610500', N'临渭区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3187', N'610521', N'610500', N'华　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3188', N'610522', N'610500', N'潼关县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3189', N'610523', N'610500', N'大荔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3190', N'610524', N'610500', N'合阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3191', N'610525', N'610500', N'澄城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3192', N'610526', N'610500', N'蒲城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3193', N'610527', N'610500', N'白水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3194', N'610528', N'610500', N'富平县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3195', N'610581', N'610500', N'韩城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3196', N'610582', N'610500', N'华阴市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3197', N'610601', N'610600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3198', N'610602', N'610600', N'宝塔区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3199', N'610621', N'610600', N'延长县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3200', N'610622', N'610600', N'延川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3201', N'610623', N'610600', N'子长县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3202', N'610624', N'610600', N'安塞县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3203', N'610625', N'610600', N'志丹县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3204', N'610626', N'610600', N'吴旗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3205', N'610627', N'610600', N'甘泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3206', N'610628', N'610600', N'富　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3207', N'610629', N'610600', N'洛川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3208', N'610630', N'610600', N'宜川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3209', N'610631', N'610600', N'黄龙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3210', N'610632', N'610600', N'黄陵县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3211', N'610701', N'610700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3212', N'610702', N'610700', N'汉台区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3213', N'610721', N'610700', N'南郑县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3214', N'610722', N'610700', N'城固县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3215', N'610723', N'610700', N'洋　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3216', N'610724', N'610700', N'西乡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3217', N'610725', N'610700', N'勉　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3218', N'610726', N'610700', N'宁强县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3219', N'610727', N'610700', N'略阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3220', N'610728', N'610700', N'镇巴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3221', N'610729', N'610700', N'留坝县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3222', N'610730', N'610700', N'佛坪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3223', N'610801', N'610800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3224', N'610802', N'610800', N'榆阳区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3225', N'610821', N'610800', N'神木县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3226', N'610822', N'610800', N'府谷县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3227', N'610823', N'610800', N'横山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3228', N'610824', N'610800', N'靖边县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3229', N'610825', N'610800', N'定边县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3230', N'610826', N'610800', N'绥德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3231', N'610827', N'610800', N'米脂县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3232', N'610828', N'610800', N'佳　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3233', N'610829', N'610800', N'吴堡县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3234', N'610830', N'610800', N'清涧县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3235', N'610831', N'610800', N'子洲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3236', N'610901', N'610900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3237', N'610902', N'610900', N'汉滨区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3238', N'610921', N'610900', N'汉阴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3239', N'610922', N'610900', N'石泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3240', N'610923', N'610900', N'宁陕县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3241', N'610924', N'610900', N'紫阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3242', N'610925', N'610900', N'岚皋县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3243', N'610926', N'610900', N'平利县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3244', N'610927', N'610900', N'镇坪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3245', N'610928', N'610900', N'旬阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3246', N'610929', N'610900', N'白河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3247', N'611001', N'611000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3248', N'611002', N'611000', N'商州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3249', N'611021', N'611000', N'洛南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3250', N'611022', N'611000', N'丹凤县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3251', N'611023', N'611000', N'商南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3252', N'611024', N'611000', N'山阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3253', N'611025', N'611000', N'镇安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3254', N'611026', N'611000', N'柞水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3255', N'620101', N'620100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3256', N'620102', N'620100', N'城关区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3257', N'620103', N'620100', N'七里河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3258', N'620104', N'620100', N'西固区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3259', N'620105', N'620100', N'安宁区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3260', N'620111', N'620100', N'红古区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3261', N'620121', N'620100', N'永登县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3262', N'620122', N'620100', N'皋兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3263', N'620123', N'620100', N'榆中县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3264', N'620201', N'620200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3265', N'620301', N'620300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3266', N'620302', N'620300', N'金川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3267', N'620321', N'620300', N'永昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3268', N'620401', N'620400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3269', N'620402', N'620400', N'白银区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3270', N'620403', N'620400', N'平川区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3271', N'620421', N'620400', N'靖远县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3272', N'620422', N'620400', N'会宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3273', N'620423', N'620400', N'景泰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3274', N'620501', N'620500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3275', N'620502', N'620500', N'秦城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3276', N'620503', N'620500', N'北道区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3277', N'620521', N'620500', N'清水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3278', N'620522', N'620500', N'秦安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3279', N'620523', N'620500', N'甘谷县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3280', N'620524', N'620500', N'武山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3281', N'620525', N'620500', N'张家川回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3282', N'620601', N'620600', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3283', N'620602', N'620600', N'凉州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3284', N'620621', N'620600', N'民勤县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3285', N'620622', N'620600', N'古浪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3286', N'620623', N'620600', N'天祝藏族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3287', N'620701', N'620700', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3288', N'620702', N'620700', N'甘州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3289', N'620721', N'620700', N'肃南裕固族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3290', N'620722', N'620700', N'民乐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3291', N'620723', N'620700', N'临泽县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3292', N'620724', N'620700', N'高台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3293', N'620725', N'620700', N'山丹县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3294', N'620801', N'620800', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3295', N'620802', N'620800', N'崆峒区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3296', N'620821', N'620800', N'泾川县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3297', N'620822', N'620800', N'灵台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3298', N'620823', N'620800', N'崇信县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3299', N'620824', N'620800', N'华亭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3300', N'620825', N'620800', N'庄浪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3301', N'620826', N'620800', N'静宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3302', N'620901', N'620900', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3303', N'620902', N'620900', N'肃州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3304', N'620921', N'620900', N'金塔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3305', N'620922', N'620900', N'安西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3306', N'620923', N'620900', N'肃北蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3307', N'620924', N'620900', N'阿克塞哈萨克族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3308', N'620981', N'620900', N'玉门市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3309', N'620982', N'620900', N'敦煌市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3310', N'621001', N'621000', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3311', N'621002', N'621000', N'西峰区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3312', N'621021', N'621000', N'庆城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3313', N'621022', N'621000', N'环　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3314', N'621023', N'621000', N'华池县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3315', N'621024', N'621000', N'合水县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3316', N'621025', N'621000', N'正宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3317', N'621026', N'621000', N'宁　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3318', N'621027', N'621000', N'镇原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3319', N'621101', N'621100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3320', N'621102', N'621100', N'安定区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3321', N'621121', N'621100', N'通渭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3322', N'621122', N'621100', N'陇西县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3323', N'621123', N'621100', N'渭源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3324', N'621124', N'621100', N'临洮县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3325', N'621125', N'621100', N'漳　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3326', N'621126', N'621100', N'岷　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3327', N'621201', N'621200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3328', N'621202', N'621200', N'武都区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3329', N'621221', N'621200', N'成　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3330', N'621222', N'621200', N'文　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3331', N'621223', N'621200', N'宕昌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3332', N'621224', N'621200', N'康　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3333', N'621225', N'621200', N'西和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3334', N'621226', N'621200', N'礼　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3335', N'621227', N'621200', N'徽　县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3336', N'621228', N'621200', N'两当县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3337', N'622901', N'622900', N'临夏市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3338', N'622921', N'622900', N'临夏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3339', N'622922', N'622900', N'康乐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3340', N'622923', N'622900', N'永靖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3341', N'622924', N'622900', N'广河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3342', N'622925', N'622900', N'和政县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3343', N'622926', N'622900', N'东乡族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3344', N'622927', N'622900', N'积石山保安族东乡族撒拉族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3345', N'623001', N'623000', N'合作市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3346', N'623021', N'623000', N'临潭县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3347', N'623022', N'623000', N'卓尼县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3348', N'623023', N'623000', N'舟曲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3349', N'623024', N'623000', N'迭部县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3350', N'623025', N'623000', N'玛曲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3351', N'623026', N'623000', N'碌曲县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3352', N'623027', N'623000', N'夏河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3353', N'630101', N'630100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3354', N'630102', N'630100', N'城东区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3355', N'630103', N'630100', N'城中区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3356', N'630104', N'630100', N'城西区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3357', N'630105', N'630100', N'城北区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3358', N'630121', N'630100', N'大通回族土族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3359', N'630122', N'630100', N'湟中县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3360', N'630123', N'630100', N'湟源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3361', N'632121', N'632100', N'平安县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3362', N'632122', N'632100', N'民和回族土族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3363', N'632123', N'632100', N'乐都县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3364', N'632126', N'632100', N'互助土族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3365', N'632127', N'632100', N'化隆回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3366', N'632128', N'632100', N'循化撒拉族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3367', N'632221', N'632200', N'门源回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3368', N'632222', N'632200', N'祁连县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3369', N'632223', N'632200', N'海晏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3370', N'632224', N'632200', N'刚察县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3371', N'632321', N'632300', N'同仁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3372', N'632322', N'632300', N'尖扎县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3373', N'632323', N'632300', N'泽库县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3374', N'632324', N'632300', N'河南蒙古族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3375', N'632521', N'632500', N'共和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3376', N'632522', N'632500', N'同德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3377', N'632523', N'632500', N'贵德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3378', N'632524', N'632500', N'兴海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3379', N'632525', N'632500', N'贵南县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3380', N'632621', N'632600', N'玛沁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3381', N'632622', N'632600', N'班玛县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3382', N'632623', N'632600', N'甘德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3383', N'632624', N'632600', N'达日县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3384', N'632625', N'632600', N'久治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3385', N'632626', N'632600', N'玛多县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3386', N'632721', N'632700', N'玉树县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3387', N'632722', N'632700', N'杂多县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3388', N'632723', N'632700', N'称多县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3389', N'632724', N'632700', N'治多县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3390', N'632725', N'632700', N'囊谦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3391', N'632726', N'632700', N'曲麻莱县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3392', N'632801', N'632800', N'格尔木市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3393', N'632802', N'632800', N'德令哈市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3394', N'632821', N'632800', N'乌兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3395', N'632822', N'632800', N'都兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3396', N'632823', N'632800', N'天峻县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3397', N'640101', N'640100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3398', N'640104', N'640100', N'兴庆区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3399', N'640105', N'640100', N'西夏区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3400', N'640106', N'640100', N'金凤区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3401', N'640121', N'640100', N'永宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3402', N'640122', N'640100', N'贺兰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3403', N'640181', N'640100', N'灵武市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3404', N'640201', N'640200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3405', N'640202', N'640200', N'大武口区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3406', N'640205', N'640200', N'惠农区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3407', N'640221', N'640200', N'平罗县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3408', N'640301', N'640300', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3409', N'640302', N'640300', N'利通区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3410', N'640323', N'640300', N'盐池县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3411', N'640324', N'640300', N'同心县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3412', N'640381', N'640300', N'青铜峡市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3413', N'640401', N'640400', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3414', N'640402', N'640400', N'原州区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3415', N'640422', N'640400', N'西吉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3416', N'640423', N'640400', N'隆德县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3417', N'640424', N'640400', N'泾源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3418', N'640425', N'640400', N'彭阳县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3419', N'640501', N'640500', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3420', N'640502', N'640500', N'沙坡头区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3421', N'640521', N'640500', N'中宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3422', N'640522', N'640500', N'海原县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3423', N'650101', N'650100', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3424', N'650102', N'650100', N'天山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3425', N'650103', N'650100', N'沙依巴克区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3426', N'650104', N'650100', N'新市区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3427', N'650105', N'650100', N'水磨沟区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3428', N'650106', N'650100', N'头屯河区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3429', N'650107', N'650100', N'达坂城区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3430', N'650108', N'650100', N'东山区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3431', N'650121', N'650100', N'乌鲁木齐县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3432', N'650201', N'650200', N'市辖区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3433', N'650202', N'650200', N'独山子区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3434', N'650203', N'650200', N'克拉玛依区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3435', N'650204', N'650200', N'白碱滩区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3436', N'650205', N'650200', N'乌尔禾区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3437', N'652101', N'652100', N'吐鲁番市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3438', N'652122', N'652100', N'鄯善县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3439', N'652123', N'652100', N'托克逊县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3440', N'652201', N'652200', N'哈密市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3441', N'652222', N'652200', N'巴里坤哈萨克自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3442', N'652223', N'652200', N'伊吾县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3443', N'652301', N'652300', N'昌吉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3444', N'652302', N'652300', N'阜康市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3445', N'652303', N'652300', N'米泉市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3446', N'652323', N'652300', N'呼图壁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3447', N'652324', N'652300', N'玛纳斯县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3448', N'652325', N'652300', N'奇台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3449', N'652327', N'652300', N'吉木萨尔县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3450', N'652328', N'652300', N'木垒哈萨克自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3451', N'652701', N'652700', N'博乐市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3452', N'652722', N'652700', N'精河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3453', N'652723', N'652700', N'温泉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3454', N'652801', N'652800', N'库尔勒市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3455', N'652822', N'652800', N'轮台县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3456', N'652823', N'652800', N'尉犁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3457', N'652824', N'652800', N'若羌县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3458', N'652825', N'652800', N'且末县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3459', N'652826', N'652800', N'焉耆回族自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3460', N'652827', N'652800', N'和静县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3461', N'652828', N'652800', N'和硕县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3462', N'652829', N'652800', N'博湖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3463', N'652901', N'652900', N'阿克苏市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3464', N'652922', N'652900', N'温宿县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3465', N'652923', N'652900', N'库车县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3466', N'652924', N'652900', N'沙雅县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3467', N'652925', N'652900', N'新和县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3468', N'652926', N'652900', N'拜城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3469', N'652927', N'652900', N'乌什县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3470', N'652928', N'652900', N'阿瓦提县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3471', N'652929', N'652900', N'柯坪县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3472', N'653001', N'653000', N'阿图什市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3473', N'653022', N'653000', N'阿克陶县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3474', N'653023', N'653000', N'阿合奇县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3475', N'653024', N'653000', N'乌恰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3476', N'653101', N'653100', N'喀什市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3477', N'653121', N'653100', N'疏附县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3478', N'653122', N'653100', N'疏勒县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3479', N'653123', N'653100', N'英吉沙县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3480', N'653124', N'653100', N'泽普县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3481', N'653125', N'653100', N'莎车县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3482', N'653126', N'653100', N'叶城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3483', N'653127', N'653100', N'麦盖提县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3484', N'653128', N'653100', N'岳普湖县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3485', N'653129', N'653100', N'伽师县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3486', N'653130', N'653100', N'巴楚县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3487', N'653131', N'653100', N'塔什库尔干塔吉克自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3488', N'653201', N'653200', N'和田市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3489', N'653221', N'653200', N'和田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3490', N'653222', N'653200', N'墨玉县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3491', N'653223', N'653200', N'皮山县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3492', N'653224', N'653200', N'洛浦县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3493', N'653225', N'653200', N'策勒县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3494', N'653226', N'653200', N'于田县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3495', N'653227', N'653200', N'民丰县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3496', N'654002', N'654000', N'伊宁市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3497', N'654003', N'654000', N'奎屯市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3498', N'654021', N'654000', N'伊宁县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3499', N'654022', N'654000', N'察布查尔锡伯自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3500', N'654023', N'654000', N'霍城县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3501', N'654024', N'654000', N'巩留县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3502', N'654025', N'654000', N'新源县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3503', N'654026', N'654000', N'昭苏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3504', N'654027', N'654000', N'特克斯县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3505', N'654028', N'654000', N'尼勒克县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3506', N'654201', N'654200', N'塔城市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3507', N'654202', N'654200', N'乌苏市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3508', N'654221', N'654200', N'额敏县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3509', N'654223', N'654200', N'沙湾县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3510', N'654224', N'654200', N'托里县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3511', N'654225', N'654200', N'裕民县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3512', N'654226', N'654200', N'和布克赛尔蒙古自治县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3513', N'654301', N'654300', N'阿勒泰市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3514', N'654321', N'654300', N'布尔津县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3515', N'654322', N'654300', N'富蕴县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3516', N'654323', N'654300', N'福海县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3517', N'654324', N'654300', N'哈巴河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3518', N'654325', N'654300', N'青河县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3519', N'654326', N'654300', N'吉木乃县')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3520', N'659001', N'659000', N'石河子市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3521', N'659002', N'659000', N'阿拉尔市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3522', N'659003', N'659000', N'图木舒克市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3523', N'659004', N'659000', N'五家渠市')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3524', N'811000', N'810000', N'香港特别行政区')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3525', N'711000', N'710000', N'台湾')
GO
GO
INSERT INTO [dbo].[JD_City_1] ([id], [cityID], [fatherID], [cityName]) VALUES (N'3526', N'821000', N'820000', N'澳门特别行政区')
GO
GO

-- ----------------------------
-- Indexes structure for table JD_City
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table JD_City
-- ----------------------------
ALTER TABLE [dbo].[JD_City] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table JD_City_1
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table JD_City_1
-- ----------------------------
ALTER TABLE [dbo].[JD_City_1] ADD PRIMARY KEY ([id])
GO
