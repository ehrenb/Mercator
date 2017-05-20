.class final synthetic Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final arg$1:Landroid/view/MenuItem;


# direct methods
.method private constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$2;->arg$1:Landroid/view/MenuItem;

    return-void
.end method

.method public static lambdaFactory$(Landroid/view/MenuItem;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$2;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/SearchUtils$$Lambda$2;->arg$1:Landroid/view/MenuItem;

    invoke-static {v0, p1, p2}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->lambda$setupSearchView$1(Landroid/view/MenuItem;Landroid/view/View;Z)V

    return-void
.end method
