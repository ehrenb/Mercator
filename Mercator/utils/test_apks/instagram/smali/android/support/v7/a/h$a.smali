.class Landroid/support/v7/a/h$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Landroid/support/v7/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/h;


# direct methods
.method constructor <init>(Landroid/support/v7/a/h;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v7/a/h$a;->a:Landroid/support/v7/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/a/h$a;->a:Landroid/support/v7/a/h;

    invoke-virtual {v0}, Landroid/support/v7/a/h;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->a(I)V

    .line 236
    :cond_0
    return-void
.end method
