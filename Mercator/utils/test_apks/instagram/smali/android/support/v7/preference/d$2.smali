.class Landroid/support/v7/preference/d$2;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/d;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/d;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Landroid/support/v7/preference/d$2;->a:Landroid/support/v7/preference/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/preference/d$2;->a:Landroid/support/v7/preference/d;

    # getter for: Landroid/support/v7/preference/d;->mList:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Landroid/support/v7/preference/d;->access$200(Landroid/support/v7/preference/d;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/d$2;->a:Landroid/support/v7/preference/d;

    # getter for: Landroid/support/v7/preference/d;->mList:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Landroid/support/v7/preference/d;->access$200(Landroid/support/v7/preference/d;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    .line 148
    return-void
.end method
