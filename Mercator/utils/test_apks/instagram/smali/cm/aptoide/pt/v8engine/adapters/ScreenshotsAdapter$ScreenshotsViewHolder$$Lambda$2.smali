.class final synthetic Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Ljava/util/ArrayList;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;->arg$1:Ljava/util/ArrayList;

    iput p2, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/ArrayList;I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;->arg$1:Ljava/util/ArrayList;

    iget v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;->arg$2:I

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->lambda$bindViews$1(Ljava/util/ArrayList;ILandroid/view/View;)V

    return-void
.end method
