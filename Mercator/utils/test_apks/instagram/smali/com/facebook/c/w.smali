.class public abstract Lcom/facebook/c/w;
.super Ljava/lang/Object;
.source "PlatformServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/c/w$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/facebook/c/w$a;

.field private d:Z

.field private e:Landroid/os/Messenger;

.field private f:I

.field private g:I

.field private final h:Ljava/lang/String;

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/c/w;->a:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/facebook/c/w;->f:I

    .line 55
    iput p3, p0, Lcom/facebook/c/w;->g:I

    .line 56
    iput-object p5, p0, Lcom/facebook/c/w;->h:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/facebook/c/w;->i:I

    .line 59
    new-instance v0, Lcom/facebook/c/w$1;

    invoke-direct {v0, p0}, Lcom/facebook/c/w$1;-><init>(Lcom/facebook/c/w;)V

    iput-object v0, p0, Lcom/facebook/c/w;->b:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/facebook/c/w;->d:Z

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/c/w;->d:Z

    .line 159
    iget-object v0, p0, Lcom/facebook/c/w;->c:Lcom/facebook/c/w$a;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Lcom/facebook/c/w$a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v2, p0, Lcom/facebook/c/w;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/facebook/c/w;->a(Landroid/os/Bundle;)V

    .line 122
    iget v1, p0, Lcom/facebook/c/w;->f:I

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 123
    iget v2, p0, Lcom/facebook/c/w;->i:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 124
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 125
    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/facebook/c/w;->b:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/facebook/c/w;->e:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-direct {p0, v3}, Lcom/facebook/c/w;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/facebook/c/w;->g:I

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_1

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/c/w;->b(Landroid/os/Bundle;)V

    .line 146
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/c/w;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/c/w;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/facebook/c/w$a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/c/w;->c:Lcom/facebook/c/w$a;

    .line 69
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    iget-boolean v2, p0, Lcom/facebook/c/w;->d:Z

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    iget v2, p0, Lcom/facebook/c/w;->i:I

    invoke-static {v2}, Lcom/facebook/c/v;->b(I)I

    move-result v2

    .line 83
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 87
    iget-object v2, p0, Lcom/facebook/c/w;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/c/v;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 91
    iput-boolean v1, p0, Lcom/facebook/c/w;->d:Z

    .line 92
    iget-object v0, p0, Lcom/facebook/c/w;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/c/w;->d:Z

    .line 99
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/c/w;->e:Landroid/os/Messenger;

    .line 103
    invoke-direct {p0}, Lcom/facebook/c/w;->c()V

    .line 104
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/facebook/c/w;->e:Landroid/os/Messenger;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/facebook/c/w;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-direct {p0, v1}, Lcom/facebook/c/w;->b(Landroid/os/Bundle;)V

    .line 114
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
