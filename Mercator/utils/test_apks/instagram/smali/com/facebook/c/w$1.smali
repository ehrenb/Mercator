.class Lcom/facebook/c/w$1;
.super Landroid/os/Handler;
.source "PlatformServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/w;-><init>(Landroid/content/Context;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/w;


# direct methods
.method constructor <init>(Lcom/facebook/c/w;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/c/w$1;->a:Lcom/facebook/c/w;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/c/w$1;->a:Lcom/facebook/c/w;

    invoke-virtual {v0, p1}, Lcom/facebook/c/w;->a(Landroid/os/Message;)V

    .line 63
    return-void
.end method
