.class Lcm/aptoide/pt/util/ScreenTrackingUtils$ScreenUtilsHelper;
.super Ljava/lang/Object;
.source "ScreenTrackingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/util/ScreenTrackingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenUtilsHelper"
.end annotation


# static fields
.field private static final INSTANCE:Lcm/aptoide/pt/util/ScreenTrackingUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcm/aptoide/pt/util/ScreenTrackingUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcm/aptoide/pt/util/ScreenTrackingUtils;-><init>(Lcm/aptoide/pt/util/ScreenTrackingUtils$1;)V

    sput-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$ScreenUtilsHelper;->INSTANCE:Lcm/aptoide/pt/util/ScreenTrackingUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcm/aptoide/pt/util/ScreenTrackingUtils;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$ScreenUtilsHelper;->INSTANCE:Lcm/aptoide/pt/util/ScreenTrackingUtils;

    return-object v0
.end method
