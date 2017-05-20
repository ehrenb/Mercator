.class public Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;
.super Ljava/lang/Object;
.source "UTMFileParser.java"


# static fields
.field public static final ENTRY_POINT:Ljava/lang/String; = "entry_point"

.field public static final TAG:Ljava/lang/String;

.field public static final UTM_CAMPAIGN:Ljava/lang/String; = "utm_campaign"

.field public static final UTM_CONTENT:Ljava/lang/String; = "utm_content"

.field public static final UTM_MEDIUM:Ljava/lang/String; = "utm_medium"

.field public static final UTM_SOURCE:Ljava/lang/String; = "utm_source"


# instance fields
.field private bufferedReader:Ljava/io/BufferedReader;

.field private utm_line:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->bufferedReader:Ljava/io/BufferedReader;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->utm_line:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public valueExtracter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->utm_line:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_1
    return-object v0

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "unknown"

    goto :goto_1
.end method
