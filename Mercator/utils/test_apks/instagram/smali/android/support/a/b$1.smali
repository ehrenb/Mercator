.class Landroid/support/a/b$1;
.super Landroid/support/a/f$a;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/a/b;->a(Landroid/support/a/a;)Landroid/support/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/a/a;

.field final synthetic b:Landroid/support/a/b;


# direct methods
.method constructor <init>(Landroid/support/a/b;Landroid/support/a/a;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Landroid/support/a/b$1;->b:Landroid/support/a/b;

    iput-object p2, p0, Landroid/support/a/b$1;->a:Landroid/support/a/a;

    invoke-direct {p0}, Landroid/support/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/a/b$1;->a:Landroid/support/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/b$1;->a:Landroid/support/a/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 190
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/a/b$1;->a:Landroid/support/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/b$1;->a:Landroid/support/a/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    :cond_0
    return-void
.end method
