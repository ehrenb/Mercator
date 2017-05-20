.class Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;
.super Lcm/aptoide/pt/utils/SimpleSubscriber;
.source "AptoideBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->requestDownloadAccess(Lrx/b/a;Lrx/b/a;)V
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
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

.field final synthetic val$toRunWhenAccessIsDenied:Lrx/b/a;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;Lrx/b/a;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;->this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;->val$toRunWhenAccessIsDenied:Lrx/b/a;

    invoke-direct {p0}, Lcm/aptoide/pt/utils/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 3

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcm/aptoide/pt/utils/SimpleSubscriber;->onNext(Ljava/lang/Object;)V

    .line 322
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    if-ne p1, v0, :cond_2

    .line 323
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;->this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    instance-of v0, v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;->this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 325
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSettingsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 324
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-class v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Fragment should be an instance of the Activity Context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;->val$toRunWhenAccessIsDenied:Lrx/b/a;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;->val$toRunWhenAccessIsDenied:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 318
    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;->onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
