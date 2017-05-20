.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "StoreAddCommentWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private commentStore:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method private getColorOrDefault(Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method static synthetic lambda$bindView$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method static synthetic lambda$null$3(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 85
    const-string v0, "fragment_comment_dialog"

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$4(Lcom/trello/rxlifecycle/a/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v0}, Lcom/trello/rxlifecycle/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$6(Lcom/trello/rxlifecycle/a/b;)Lrx/d;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$showSignInMessage$8(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method static synthetic lambda$showSignInMessage$9(Ljava/lang/Integer;)Lrx/d;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private reloadComments()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->TAG:Ljava/lang/String;

    const-string v1, "TODO: reload the comments"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private showSignInMessage(Landroid/view/View;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$5;->lambdaFactory$(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/view/View;IILandroid/view/View$OnClickListener;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private showStoreCommentFragment(JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Landroid/app/FragmentManager;",
            "Landroid/view/View;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static/range {p0 .. p5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comment_store_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->commentStore:Landroid/widget/Button;

    .line 37
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;)V
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->getStoreTheme()Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->getColorOrDefault(Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)I

    move-result v1

    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 45
    sget v2, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->commentStore:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->commentStore:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;)Lrx/b/e;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 62
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 51
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->commentStore:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;Ljava/lang/Void;)Lrx/d;
    .locals 7

    .prologue
    .line 55
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->getStoreId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->commentStore:Landroid/widget/Button;

    move-object v1, p0

    .line 55
    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->showStoreCommentFragment(JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$5(Lcom/trello/rxlifecycle/a/b;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->reloadComments()V

    return-void
.end method

.method synthetic lambda$showStoreCommentFragment$7(JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;Ljava/lang/Boolean;)Lrx/d;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->newInstanceStoreComment(JLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lifecycle()Lrx/d;

    move-result-object v1

    invoke-static {v0, p4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)Lrx/b/a;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;)Lrx/b/b;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$10;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->showSignInMessage(Landroid/view/View;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
