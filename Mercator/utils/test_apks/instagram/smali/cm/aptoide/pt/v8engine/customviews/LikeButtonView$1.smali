.class Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LikeButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;->this$0:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;->this$0:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    # getter for: Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->access$000(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Lcm/aptoide/pt/v8engine/customviews/CircleView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/customviews/CircleView;->setInnerCircleRadiusProgress(F)V

    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;->this$0:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    # getter for: Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->access$000(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Lcm/aptoide/pt/v8engine/customviews/CircleView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/customviews/CircleView;->setOuterCircleRadiusProgress(F)V

    .line 162
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;->this$0:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    # getter for: Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vDotsView:Lcm/aptoide/pt/v8engine/customviews/DotsView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->access$100(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Lcm/aptoide/pt/v8engine/customviews/DotsView;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->setCurrentProgress(F)V

    .line 163
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;->this$0:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    # getter for: Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->access$200(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 164
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;->this$0:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    # getter for: Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->access$200(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 165
    return-void
.end method
