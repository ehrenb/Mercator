.class Lcom/facebook/a/a/g;
.super Ljava/lang/Object;
.source "SessionLogger.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/g;->a:Ljava/lang/String;

    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/a/a/g;->b:[J

    return-void

    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)I
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    sget-object v1, Lcom/facebook/a/a/g;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/facebook/a/a/g;->b:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return v0
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 131
    sget-object v0, Lcom/facebook/n;->e:Lcom/facebook/n;

    sget-object v1, Lcom/facebook/a/a/g;->a:Ljava/lang/String;

    const-string v2, "Clock skew detected"

    invoke-static {v0, v1, v2}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/f;Ljava/lang/String;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v4, 0x0

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/facebook/a/a/f;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/a/a/f;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/facebook/a/a/g;->a()V

    .line 93
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/a/a/f;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 95
    invoke-static {}, Lcom/facebook/a/a/g;->a()V

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 99
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v3, "fb_mobile_app_interruptions"

    .line 102
    invoke-virtual {p2}, Lcom/facebook/a/a/f;->d()I

    move-result v4

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v3, "fb_mobile_time_between_sessions"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "session_quanta_%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/facebook/a/a/g;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    .line 105
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lcom/facebook/a/a/f;->i()Lcom/facebook/a/a/h;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Lcom/facebook/a/a/h;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    const-string v3, "fb_mobile_launch_source"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "_logTime"

    .line 118
    invoke-virtual {p2}, Lcom/facebook/a/a/f;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    .line 117
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    new-instance v0, Lcom/facebook/a/a/e;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p3, v3}, Lcom/facebook/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v3, "fb_mobile_deactivate_app"

    .line 126
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    long-to-double v4, v4

    .line 124
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/facebook/a/a/e;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 128
    return-void

    .line 111
    :cond_2
    const-string v0, "Unclassified"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/h;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lcom/facebook/a/a/h;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v2, "fb_mobile_launch_source"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/facebook/a/a/e;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p3, v2}, Lcom/facebook/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v2, "fb_mobile_activate_app"

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/facebook/a/a/e;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    return-void

    .line 66
    :cond_0
    const-string v0, "Unclassified"

    goto :goto_0
.end method
