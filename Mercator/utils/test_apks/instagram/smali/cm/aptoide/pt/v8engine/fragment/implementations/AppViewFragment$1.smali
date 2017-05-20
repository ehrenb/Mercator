.class Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$1;
.super Lcm/aptoide/pt/utils/SimpleSubscriber;
.source "AppViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setupAppView(Lcm/aptoide/pt/model/v7/GetApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/utils/SimpleSubscriber",
        "<",
        "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-direct {p0}, Lcm/aptoide/pt/utils/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 549
    invoke-super {p0, p1}, Lcm/aptoide/pt/utils/SimpleSubscriber;->onNext(Ljava/lang/Object;)V

    .line 550
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 557
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installDisplayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->startInstallationProcess()V

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 547
    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$1;->onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
