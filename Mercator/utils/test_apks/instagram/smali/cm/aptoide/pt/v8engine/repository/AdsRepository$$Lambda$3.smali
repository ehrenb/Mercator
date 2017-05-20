.class final synthetic Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;->instance:Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;->instance:Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public isAdultSwitchActive()Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->isAdultSwitchActive()Z

    move-result v0

    return v0
.end method
