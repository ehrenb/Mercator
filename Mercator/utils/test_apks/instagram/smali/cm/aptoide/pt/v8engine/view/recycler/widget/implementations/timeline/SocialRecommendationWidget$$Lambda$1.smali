.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

.field private final arg$3:Landroid/support/v4/app/u;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;Landroid/support/v4/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;->arg$3:Landroid/support/v4/app/u;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;Landroid/support/v4/app/u;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;Landroid/support/v4/app/u;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;->arg$3:Landroid/support/v4/app/u;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;Landroid/support/v4/app/u;Landroid/view/View;)V

    return-void
.end method
