.class Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;
.super Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;
.source "OtherVersionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 204
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$util$AppBarStateChangeListener$State:[I

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->animationsEnabled:Z
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 222
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->otherVersionsTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_1
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->animationsEnabled:Z
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 211
    :goto_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->otherVersionsTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 209
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 220
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
