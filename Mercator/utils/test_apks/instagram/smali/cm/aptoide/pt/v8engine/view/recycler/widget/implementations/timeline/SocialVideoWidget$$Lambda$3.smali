.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

.field private final arg$3:Landroid/support/v4/app/u;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;->arg$3:Landroid/support/v4/app/u;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;->arg$3:Landroid/support/v4/app/u;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;Ljava/lang/Throwable;)V

    return-void
.end method
