.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "UpdatesHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private more:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method static synthetic lambda$null$0(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    .line 89
    new-instance v3, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v3}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/database/realm/Update;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    return-object v1
.end method

.method static synthetic lambda$null$1(Ljava/util/ArrayList;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method static synthetic lambda$null$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->setupDownloadEvent(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method static synthetic lambda$null$4(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Lrx/d;->b(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$5(Lcm/aptoide/pt/v8engine/Progress;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/Progress;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$6(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->TAG:Ljava/lang/String;

    const-string v1, "Update task completed"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$7(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$9()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->title:Landroid/widget/TextView;

    .line 45
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->more:Landroid/widget/Button;

    .line 46
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->more:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->update_all:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->more:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->more:Landroid/widget/Button;

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method synthetic lambda$bindView$10(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;)Lrx/b/a;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$3;->lambdaFactory$()Lrx/b/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToExternalFileSystem(Lrx/b/a;Lrx/b/a;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    const-string v1, "SET_TAB_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "SET_TAB_EVENT"

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/u;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Updates;->updateAll()V

    .line 110
    return-void
.end method

.method synthetic lambda$null$3(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->getInstallManager()Lcm/aptoide/pt/v8engine/InstallManager;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/a;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$8(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;)V
    .locals 4

    .prologue
    .line 80
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    .line 81
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;->compositeSubscription:Lrx/j/b;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->getAll(Z)Lrx/d;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    .line 84
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;)Lrx/b/e;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$9;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget$$Lambda$10;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 102
    return-void
.end method
