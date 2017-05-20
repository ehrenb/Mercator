.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;->arg$2:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;-><init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;->arg$2:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->lambda$bindView$2(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
