.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$4;->arg$1:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/ProgressDialog;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$4;-><init>(Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$4;->arg$1:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->lambda$onPreferenceClick$3(Landroid/app/ProgressDialog;)V

    return-void
.end method
