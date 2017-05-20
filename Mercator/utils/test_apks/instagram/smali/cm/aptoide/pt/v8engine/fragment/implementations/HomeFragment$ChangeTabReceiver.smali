.class public Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeTabReceiver"
.end annotation


# static fields
.field public static final SET_TAB_EVENT:Ljava/lang/String; = "SET_TAB_EVENT"


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 351
    const-string v0, "SET_TAB_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Event$Name;

    .line 352
    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v1

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    .line 354
    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    .line 355
    :goto_0
    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    move-result-object v2

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    .line 357
    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getEventNamePosition(Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 356
    invoke-virtual {v2, v0}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->setCurrentItem(I)V

    .line 360
    :cond_0
    return-void

    .line 354
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
