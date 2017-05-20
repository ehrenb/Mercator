.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;
.super Ljava/lang/Object;
.source "DateCalculator.java"


# static fields
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
    .line 27
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_yesterday:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelYesterday:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_today:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelToday:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_just_now:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelJustNow:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_minutes_ago:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelMinutesAgo:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_hours_ago:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelHoursAgo:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_hour_ago:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelHourAgo:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_days_ago:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelDaysAgo:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_week_ago2:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelWeekAgo:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_weeks_ago:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelWeeksAgo:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_month_ago:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelMonthAgo:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_months_ago:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelMonthsAgo:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_year_ago:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelYearAgo:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_years_ago:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelYearsAgo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private getTimeDiffAll(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide v10, 0x6c258c000L

    const-wide v8, 0x90321000L

    const-wide/32 v6, 0x240c8400

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 82
    invoke-static {p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->isYesterday(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 85
    :cond_1
    cmp-long v2, v0, v6

    if-gez v2, :cond_3

    .line 86
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 87
    if-ne v0, v4, :cond_2

    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelYesterday:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_days_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 87
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_3
    cmp-long v2, v0, v8

    if-gez v2, :cond_5

    .line 90
    div-long/2addr v0, v6

    long-to-double v0, v0

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 92
    if-ne v0, v4, :cond_4

    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelWeekAgo:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_weeks_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 92
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_5
    cmp-long v2, v0, v10

    if-gez v2, :cond_7

    .line 95
    div-long/2addr v0, v8

    long-to-double v0, v0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 98
    if-ne v0, v4, :cond_6

    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelMonthAgo:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_months_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 98
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_7
    div-long/2addr v0, v10

    long-to-double v0, v0

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 104
    if-ne v0, v4, :cond_8

    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelYearAgo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    sget v1, Lcm/aptoide/pt/utils/R$string;->WidgetProvider_timestamp_years_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 104
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10

    .prologue
    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 127
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 128
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 129
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 130
    sub-long/2addr v2, v4

    .line 132
    const-wide/32 v4, 0x36ee80

    div-long v4, v2, v4

    .line 133
    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    .line 134
    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    .line 135
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 137
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    .line 138
    invoke-static {p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->isYesterday(J)Z

    move-result v3

    .line 140
    if-eqz v2, :cond_0

    .line 141
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelToday:Ljava/lang/String;

    .line 147
    :goto_0
    return-object v0

    .line 142
    :cond_0
    if-eqz v3, :cond_1

    .line 143
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->mTimestampLabelYesterday:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/32 v4, 0x1ee62800

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 145
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->weekdays:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 147
    :cond_2
    const/high16 v0, 0x20000

    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isYesterday(J)Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 118
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 120
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 121
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
.method public getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    const-string v0, ""

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeDiffAll(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
