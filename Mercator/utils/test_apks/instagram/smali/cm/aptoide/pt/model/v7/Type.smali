.class public final enum Lcm/aptoide/pt/model/v7/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/model/v7/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/model/v7/Type;

.field public static final enum ADS:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum APPS_GROUP:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum APP_META:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum COMMENTS_GROUP:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum DISPLAYS:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum MY_STORE:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum MY_STORE_META:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum REVIEWS_GROUP:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum STORES_GROUP:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum STORES_RECOMMENDED:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum STORE_META:Lcm/aptoide/pt/model/v7/Type;

.field public static final enum _EMPTY:Lcm/aptoide/pt/model/v7/Type;


# instance fields
.field private defaultPerLineCount:I

.field private fixedPerLineCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 15
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "_EMPTY"

    invoke-direct {v0, v1, v4, v3, v3}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->_EMPTY:Lcm/aptoide/pt/model/v7/Type;

    .line 18
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "APPS_GROUP"

    invoke-direct {v0, v1, v3, v5, v4}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->APPS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 19
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "STORES_GROUP"

    invoke-direct {v0, v1, v6, v5, v4}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->STORES_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 20
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "DISPLAYS"

    invoke-direct {v0, v1, v5, v6, v3}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->DISPLAYS:Lcm/aptoide/pt/model/v7/Type;

    .line 21
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "ADS"

    invoke-direct {v0, v1, v7, v5, v4}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->ADS:Lcm/aptoide/pt/model/v7/Type;

    .line 22
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "STORE_META"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v3}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->STORE_META:Lcm/aptoide/pt/model/v7/Type;

    .line 23
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "COMMENTS_GROUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v3}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->COMMENTS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 26
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "REVIEWS_GROUP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->REVIEWS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 28
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "MY_STORE_META"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3, v3}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->MY_STORE_META:Lcm/aptoide/pt/model/v7/Type;

    .line 29
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "MY_STORES_SUBSCRIBED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v5, v4}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/model/v7/Type;

    .line 30
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "STORES_RECOMMENDED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v5, v4}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->STORES_RECOMMENDED:Lcm/aptoide/pt/model/v7/Type;

    .line 31
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "MY_STORE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3, v3}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->MY_STORE:Lcm/aptoide/pt/model/v7/Type;

    .line 32
    new-instance v0, Lcm/aptoide/pt/model/v7/Type;

    const-string v1, "APP_META"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3, v3}, Lcm/aptoide/pt/model/v7/Type;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->APP_META:Lcm/aptoide/pt/model/v7/Type;

    .line 14
    const/16 v0, 0xd

    new-array v0, v0, [Lcm/aptoide/pt/model/v7/Type;

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->_EMPTY:Lcm/aptoide/pt/model/v7/Type;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->APPS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->STORES_GROUP:Lcm/aptoide/pt/model/v7/Type;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->DISPLAYS:Lcm/aptoide/pt/model/v7/Type;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->ADS:Lcm/aptoide/pt/model/v7/Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->STORE_META:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->COMMENTS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->REVIEWS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->MY_STORE_META:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->STORES_RECOMMENDED:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->MY_STORE:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->APP_META:Lcm/aptoide/pt/model/v7/Type;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/model/v7/Type;->$VALUES:[Lcm/aptoide/pt/model/v7/Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcm/aptoide/pt/model/v7/Type;->defaultPerLineCount:I

    .line 39
    iput-boolean p4, p0, Lcm/aptoide/pt/model/v7/Type;->fixedPerLineCount:Z

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Type;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcm/aptoide/pt/model/v7/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Type;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/model/v7/Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcm/aptoide/pt/model/v7/Type;->$VALUES:[Lcm/aptoide/pt/model/v7/Type;

    invoke-virtual {v0}, [Lcm/aptoide/pt/model/v7/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/Type;

    return-object v0
.end method


# virtual methods
.method public getDefaultPerLineCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcm/aptoide/pt/model/v7/Type;->defaultPerLineCount:I

    return v0
.end method

.method public getPerLineCount()I
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Type;->isFixedPerLineCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Type;->getDefaultPerLineCount()I

    move-result v0

    .line 46
    :goto_0
    if-lez v0, :cond_1

    :goto_1
    return v0

    .line 44
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getScreenWidthInDip()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Type;->getDefaultPerLineCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isFixedPerLineCount()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcm/aptoide/pt/model/v7/Type;->fixedPerLineCount:Z

    return v0
.end method
