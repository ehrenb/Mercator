.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$c;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;->instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/support/v7/preference/Preference$c;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;->instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->lambda$setupClickHandlers$3(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
