.class final Lcom/a/a/c/e$3;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/e;->a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;Lcom/a/a/c/e$a;)Lcom/a/a/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/e$a;

.field final synthetic b:Lcom/a/a/c/e$b;


# direct methods
.method constructor <init>(Lcom/a/a/c/e$a;Lcom/a/a/c/e$b;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/a/a/c/e$3;->a:Lcom/a/a/c/e$a;

    iput-object p2, p0, Lcom/a/a/c/e$3;->b:Lcom/a/a/c/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v0, p0, Lcom/a/a/c/e$3;->a:Lcom/a/a/c/e$a;

    invoke-interface {v0, v1}, Lcom/a/a/c/e$a;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/a/a/c/e$3;->b:Lcom/a/a/c/e$b;

    invoke-virtual {v0, v1}, Lcom/a/a/c/e$b;->a(Z)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
