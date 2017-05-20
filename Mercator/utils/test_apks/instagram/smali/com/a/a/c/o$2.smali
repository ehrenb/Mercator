.class Lcom/a/a/c/o$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePowerStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/o;


# direct methods
.method constructor <init>(Lcom/a/a/c/o;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/a/a/c/o$2;->a:Lcom/a/a/c/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/a/a/c/o$2;->a:Lcom/a/a/c/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/c/o;->a(Lcom/a/a/c/o;Z)Z

    .line 51
    return-void
.end method
