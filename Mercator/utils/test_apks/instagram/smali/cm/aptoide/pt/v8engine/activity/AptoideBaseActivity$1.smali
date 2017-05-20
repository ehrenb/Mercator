.class Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;
.super Lcm/aptoide/pt/utils/SimpleSubscriber;
.source "AptoideBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->requestAccessToExternalFileSystem(ZLrx/b/a;Lrx/b/a;)V
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


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-direct {p0}, Lcm/aptoide/pt/utils/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 4

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcm/aptoide/pt/utils/SimpleSubscriber;->onNext(Ljava/lang/Object;)V

    .line 218
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    if-eq p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    # getter for: Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsDenied:Lrx/b/a;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->access$000(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;)Lrx/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    # getter for: Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsDenied:Lrx/b/a;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->access$000(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;)Lrx/b/a;

    move-result-object v0

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;->onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
