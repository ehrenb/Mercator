.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/e;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->lambda$onPreferenceClick$0(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
