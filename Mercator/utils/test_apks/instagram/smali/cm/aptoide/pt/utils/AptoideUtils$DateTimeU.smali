.class public Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;
.super Landroid/text/format/DateUtils;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTimeU"
.end annotation


# static fields
.field private static instance:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU; = null

.field private static mTimestampLabelDaysAgo:Ljava/lang/String; = null

.field private static mTimestampLabelHourAgo:Ljava/lang/String; = null

.field private static mTimestampLabelHoursAgo:Ljava/lang/String; = null

.field private static mTimestampLabelJustNow:Ljava/lang/String; = null

.field private static mTimestampLabelMinutesAgo:Ljava/lang/String; = null

.field private static mTimestampLabelMonthAgo:Ljava/lang/String; = null

.field private static mTimestampLabelMonthsAgo:Ljava/lang/String; = null

.field private static mTimestampLabelToday:Ljava/lang/String; = null

.field private static mTimestampLabelWeekAgo:Ljava/lang/String; = null

.field private static mTimestampLabelWeeksAgo:Ljava/lang/String; = null

.field private static mTimestampLabelYearAgo:Ljava/lang/String; = null

.field private static mTimestampLabelYearsAgo:Ljava/lang/String; = null

.field private static mTimestampLabelYesterday:Ljava/lang/String; = null

.field private static final millisInADay:J = 0x5265c00L

.field private static weekdays:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1119
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1102
    invoke-direct {p0}, Landroid/text/format/DateUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;
    .locals 1

    .prologue
    .line 1122
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance(Landroid/content/Context;)Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;
    .locals 2

    .prologue
    .line 1133
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->instance:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    if-nez v0, :cond_0

    .line 1134
    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    invoke-direct {v0}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;-><init>()V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->instance:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    .line 1136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_yesterday:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelYesterday:Ljava/lang/String;

    .line 1138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_today:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelToday:Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_just_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelJustNow:Ljava/lang/String;

    .line 1142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_minutes_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelMinutesAgo:Ljava/lang/String;

    .line 1144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_hours_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelHoursAgo:Ljava/lang/String;

    .line 1146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_hour_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelHourAgo:Ljava/lang/String;

    .line 1148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_days_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelDaysAgo:Ljava/lang/String;

    .line 1150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_week_ago2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelWeekAgo:Ljava/lang/String;

    .line 1152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_weeks_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelWeeksAgo:Ljava/lang/String;

    .line 1154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_month_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelMonthAgo:Ljava/lang/String;

    .line 1156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_months_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelMonthsAgo:Ljava/lang/String;

    .line 1158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_year_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelYearAgo:Ljava/lang/String;

    .line 1160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_years_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelYearsAgo:Ljava/lang/String;

    .line 1162
    :cond_0
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->instance:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    return-object v0
.end method

.method private static isYesterday(J)Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    .line 1205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1206
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1209
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1211
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1212
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTimeDiffAll(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide v10, 0x6c258c000L

    const-wide v8, 0x90321000L

    const-wide/32 v6, 0x240c8400

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1167
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 1169
    invoke-static {p2, p3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->isYesterday(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2, p3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1170
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    .line 1194
    invoke-virtual {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1172
    :cond_1
    cmp-long v2, v0, v6

    if-gez v2, :cond_3

    .line 1173
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1174
    if-ne v0, v4, :cond_2

    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelYesterday:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_days_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 1176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 1175
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1177
    :cond_3
    cmp-long v2, v0, v8

    if-gez v2, :cond_5

    .line 1178
    div-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1179
    if-ne v0, v4, :cond_4

    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelWeekAgo:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_weeks_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 1181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 1180
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1182
    :cond_5
    cmp-long v2, v0, v10

    if-gez v2, :cond_7

    .line 1183
    div-long/2addr v0, v8

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1184
    if-ne v0, v4, :cond_6

    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelMonthAgo:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_months_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 1185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 1184
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1187
    :cond_7
    div-long/2addr v0, v10

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1188
    if-ne v0, v4, :cond_8

    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelYearAgo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_years_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 1190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 1189
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getTimeDiffString(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10

    .prologue
    .line 1222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1224
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1225
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1226
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1227
    sub-long/2addr v2, v4

    .line 1229
    const-wide/32 v4, 0x36ee80

    div-long v4, v2, v4

    .line 1230
    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    .line 1231
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    sub-long/2addr v6, v8

    .line 1232
    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    .line 1234
    invoke-static {p2, p3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->isToday(J)Z

    move-result v2

    .line 1235
    invoke-static {p2, p3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->isYesterday(J)Z

    move-result v3

    .line 1237
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    const-wide/16 v8, 0xc

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 1238
    const-wide/16 v0, 0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    sget v0, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_hour_ago:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1239
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1238
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    :goto_0
    return-object v0

    .line 1238
    :cond_0
    sget v0, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_hours_ago:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1241
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1240
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1242
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gtz v4, :cond_3

    .line 1243
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    .line 1244
    sget v0, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_minutes_ago:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1245
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1244
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1247
    :cond_2
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelJustNow:Ljava/lang/String;

    goto :goto_0

    .line 1249
    :cond_3
    if-eqz v2, :cond_4

    .line 1250
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelToday:Ljava/lang/String;

    goto :goto_0

    .line 1251
    :cond_4
    if-eqz v3, :cond_5

    .line 1252
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->mTimestampLabelYesterday:Ljava/lang/String;

    goto :goto_0

    .line 1253
    :cond_5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/32 v4, 0x1ee62800

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 1254
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->weekdays:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 1256
    :cond_6
    const/high16 v0, 0x20000

    invoke-static {p1, p2, p3, v0}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
