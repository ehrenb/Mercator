.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->lambda$onPreferenceClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
