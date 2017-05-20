.class Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$1;
.super Ljava/lang/Object;
.source "ScreenshotsViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 68
    return-void
.end method
