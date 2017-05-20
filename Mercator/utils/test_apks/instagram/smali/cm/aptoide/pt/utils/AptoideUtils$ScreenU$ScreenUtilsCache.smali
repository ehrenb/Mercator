.class Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenUtilsCache"
.end annotation


# instance fields
.field private orientation:I

.field private value:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/4 v0, -0x1

    iput v0, p0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->orientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcm/aptoide/pt/utils/AptoideUtils$1;)V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;)I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->orientation:I

    return v0
.end method

.method static synthetic access$400(Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;)F
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->value:F

    return v0
.end method


# virtual methods
.method public set(IF)V
    .locals 0

    .prologue
    .line 564
    iput p1, p0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->orientation:I

    .line 565
    iput p2, p0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->value:F

    .line 566
    return-void
.end method
