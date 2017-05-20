.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->lambda$bindView$3(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;Landroid/view/View;)V

    return-void
.end method
