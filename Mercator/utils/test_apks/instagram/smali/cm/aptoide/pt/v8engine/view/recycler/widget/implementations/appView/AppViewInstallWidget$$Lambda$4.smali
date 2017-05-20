.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->lambda$updateUi$3(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/view/View;)V

    return-void
.end method
