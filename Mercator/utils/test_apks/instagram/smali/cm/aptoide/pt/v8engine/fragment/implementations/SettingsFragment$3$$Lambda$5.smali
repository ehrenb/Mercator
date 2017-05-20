.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$5;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->lambda$onPreferenceClick$4(Ljava/lang/Long;)V

    return-void
.end method
