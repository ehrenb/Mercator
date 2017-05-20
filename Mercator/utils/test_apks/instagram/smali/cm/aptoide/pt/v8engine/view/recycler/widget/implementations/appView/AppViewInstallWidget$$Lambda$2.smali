.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

.field private final arg$3:Lcm/aptoide/pt/model/v7/GetApp;

.field private final arg$4:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field private final arg$5:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

.field private final arg$6:[Z


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$3:Lcm/aptoide/pt/model/v7/GetApp;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$4:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$5:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$6:[Z

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;[Z)Lrx/b/b;
    .locals 7

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;[Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$3:Lcm/aptoide/pt/model/v7/GetApp;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$4:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$5:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->arg$6:[Z

    move-object v6, p1

    check-cast v6, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    invoke-virtual/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->lambda$bindView$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;[ZLcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;)V

    return-void
.end method
