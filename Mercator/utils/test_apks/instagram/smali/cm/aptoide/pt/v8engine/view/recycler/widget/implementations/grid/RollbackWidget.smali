.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "RollbackWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private appState:Landroid/widget/TextView;

.field private appUpdateVersion:Landroid/widget/TextView;

.field private rollbackAction:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method static synthetic lambda$bindView$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method static synthetic lambda$null$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$3()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->TAG:Ljava/lang/String;

    const-string v1, "Unable to access external file system"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appIcon:Landroid/widget/ImageView;

    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appName:Landroid/widget/TextView;

    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appState:Landroid/widget/TextView;

    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_update_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appUpdateVersion:Landroid/widget/TextView;

    .line 41
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ic_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->rollbackAction:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;)V
    .locals 10

    .prologue
    .line 45
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    .line 47
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 49
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appUpdateVersion:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    sget-object v3, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$1;->$SwitchMap$cm$aptoide$pt$database$realm$Rollback$Action:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcm/aptoide/pt/database/realm/Rollback$Action;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/database/realm/Rollback$Action;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/database/realm/Rollback$Action;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 71
    :goto_0
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 72
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    sget v4, Lcm/aptoide/pt/v8engine/R$string;->at_time:I

    .line 74
    invoke-virtual {v1, v4}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->appState:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->compositeSubscription:Lrx/j/b;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->rollbackAction:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v3

    invoke-static {p0, v1, v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 109
    return-void

    .line 55
    :pswitch_0
    sget v3, Lcm/aptoide/pt/v8engine/R$string;->rollback_updated:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->rollbackAction:Landroid/widget/TextView;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->downgrade:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 59
    :pswitch_1
    sget v3, Lcm/aptoide/pt/v8engine/R$string;->rollback_downgraded:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->rollbackAction:Landroid/widget/TextView;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->update:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 63
    :pswitch_2
    sget v3, Lcm/aptoide/pt/v8engine/R$string;->rollback_uninstalled:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->rollbackAction:Landroid/widget/TextView;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->install:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 67
    :pswitch_3
    sget v3, Lcm/aptoide/pt/v8engine/R$string;->rollback_installed:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->rollbackAction:Landroid/widget/TextView;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->uninstall:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic lambda$bindView$4(Landroid/support/v4/app/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 79
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 81
    invoke-static {p0, p2, p3, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Landroid/support/v4/app/u;)Lrx/b/a;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$4;->lambdaFactory$()Lrx/b/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToExternalFileSystem(Lrx/b/a;Lrx/b/a;)V

    .line 108
    return-void
.end method

.method synthetic lambda$null$2(Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Landroid/support/v4/app/u;)V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/database/realm/Rollback$Action;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/database/realm/Rollback$Action;

    move-result-object v0

    .line 83
    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$1;->$SwitchMap$cm$aptoide$pt$database$realm$Rollback$Action:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback$Action;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 85
    :pswitch_0
    check-cast p3, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-virtual {p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->update(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    goto :goto_0

    .line 90
    :pswitch_1
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->uninstall:I

    invoke-static {p3, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 91
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->compositeSubscription:Lrx/j/b;

    .line 92
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->getDownloadFromPojo()Lcm/aptoide/pt/database/realm/Download;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->uninstall(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0

    .line 98
    :pswitch_2
    check-cast p3, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-virtual {p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->install(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    goto :goto_0

    .line 102
    :pswitch_3
    check-cast p3, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-virtual {p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->update(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
