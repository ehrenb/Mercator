.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Z

.field private final arg$4:Landroid/view/View$OnClickListener;

.field private final arg$5:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$2:Landroid/content/Context;

    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$3:Z

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$4:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$5:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;-><init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$2:Landroid/content/Context;

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$3:Z

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$4:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->arg$5:Landroid/view/View$OnClickListener;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->lambda$installOrUpgradeListener$17(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
