.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;->lambda$bindView$1(Ljava/lang/Void;)V

    return-void
.end method
