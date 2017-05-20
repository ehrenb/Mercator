.class Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;
.super Landroid/support/v4/view/ViewPager$i;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setupViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$i;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPageSelected$0(Landroid/support/v4/app/y;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;-><init>()V

    const-string v1, "addStoreDialog"

    invoke-virtual {v0, p0, v1}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    .line 204
    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Name;->getUserTimeline:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getEventName(I)Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->openTimeline()V

    .line 208
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myStores:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getEventNamePosition(Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    .line 211
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    .line 212
    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$d;

    .line 213
    new-instance v2, Lcm/aptoide/pt/v8engine/behavior/ScrollAwareFABBehavior;

    invoke-direct {v2}, Lcm/aptoide/pt/v8engine/behavior/ScrollAwareFABBehavior;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout$d;->a(Landroid/support/design/widget/CoordinatorLayout$a;)V

    .line 214
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1$$Lambda$1;->lambdaFactory$(Landroid/support/v4/app/y;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$400(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->a()V

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    .line 221
    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$500(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$d;

    .line 222
    invoke-virtual {v0, v3}, Landroid/support/design/widget/CoordinatorLayout$d;->a(Landroid/support/design/widget/CoordinatorLayout$a;)V

    .line 223
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$600(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$700(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    .line 226
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->access$800(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
