.class public Lcm/aptoide/pt/utils/AptoideUtils$RegexU;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexU"
.end annotation


# static fields
.field private static final SPLIT_URL_EXTENSION:Ljava/lang/String; = "\\.(?=[^\\.]+$)"

.field private static final STORE_ID_FROM_GET_URL:Ljava/lang/String; = "store_id\\=(\\d+)"

.field private static STORE_ID_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final STORE_NAME_FROM_GET_URL:Ljava/lang/String; = "store_name\\/(.*?)\\/"

.field private static STORE_NAME_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStoreIdFromGetUrlPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->STORE_ID_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "store_id\\=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->STORE_ID_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 372
    :cond_0
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->STORE_ID_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getStoreNameFromGetUrlPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->STORE_NAME_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 377
    const-string v0, "store_name\\/(.*?)\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->STORE_NAME_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 380
    :cond_0
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->STORE_NAME_FROM_GET_URL_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method
