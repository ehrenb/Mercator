.class Lcom/liulishuo/filedownloader/o;
.super Lcom/liulishuo/filedownloader/services/a;
.source "FileDownloadServiceUIGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liulishuo/filedownloader/services/a",
        "<",
        "Lcom/liulishuo/filedownloader/o$a;",
        "Lcom/liulishuo/filedownloader/c/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/a;-><init>(Ljava/lang/Class;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/c/b;
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Lcom/liulishuo/filedownloader/c/b$a;->a(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/c/b;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/liulishuo/filedownloader/o$a;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/liulishuo/filedownloader/o$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/o$a;-><init>()V

    return-object v0
.end method

.method protected synthetic a(Landroid/os/IInterface;Landroid/os/Binder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lcom/liulishuo/filedownloader/c/b;

    check-cast p2, Lcom/liulishuo/filedownloader/o$a;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/o;->b(Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/o$a;)V

    return-void
.end method

.method protected a(Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/o$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/c/b;->a(Lcom/liulishuo/filedownloader/c/a;)V

    .line 67
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->a(I)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/b;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/c/b;->a(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 10

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {p1, p2, p3}, Lcom/liulishuo/filedownloader/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/b;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/liulishuo/filedownloader/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)B
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->b(I)B

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 180
    :cond_0
    const/4 v1, 0x0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/b;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/c/b;->e(I)B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method protected synthetic b()Landroid/os/Binder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->a()Lcom/liulishuo/filedownloader/o$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/o;->a(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/c/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IInterface;Landroid/os/Binder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lcom/liulishuo/filedownloader/c/b;

    check-cast p2, Lcom/liulishuo/filedownloader/o$a;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/o;->a(Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/o$a;)V

    return-void
.end method

.method protected b(Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/o$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/c/b;->b(Lcom/liulishuo/filedownloader/c/a;)V

    .line 72
    return-void
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->c(I)Z

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 272
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/b;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/c/b;->f(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/liulishuo/filedownloader/e/a;->a()V

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/c/b;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
