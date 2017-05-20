.class public Lcm/aptoide/pt/handlers/ExtendedView$OnClickListener;
.super Ljava/lang/Object;
.source "ExtendedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/handlers/ExtendedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/handlers/ExtendedView;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/handlers/ExtendedView;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/handlers/ExtendedView$OnClickListener;->this$0:Lcm/aptoide/pt/handlers/ExtendedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/handlers/ExtendedView$OnClickListener;->this$0:Lcm/aptoide/pt/handlers/ExtendedView;

    # getter for: Lcm/aptoide/pt/handlers/ExtendedView;->weakReference:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcm/aptoide/pt/handlers/ExtendedView;->access$000(Lcm/aptoide/pt/handlers/ExtendedView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/handlers/ExtendedView$OnClickListener;->onClickReference(Landroid/view/View;Ljava/lang/Object;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/handlers/ExtendedView$OnClickListener;->onNullReference(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickReference(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method

.method public onNullReference(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
