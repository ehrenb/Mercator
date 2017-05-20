.class public Lcom/liulishuo/filedownloader/services/f;
.super Lcom/liulishuo/filedownloader/c/b$a;
.source "FDServiceSharedHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/services/h;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/liulishuo/filedownloader/services/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/b$a;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/f;->b:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/h;->a()V

    .line 72
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 104
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->b()Lcom/liulishuo/filedownloader/services/f$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/services/f$a;->a(Lcom/liulishuo/filedownloader/services/f;)V

    .line 127
    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/c/a;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 10

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/services/h;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->stopForeground(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/h;->b(I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/liulishuo/filedownloader/c/a;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/h;->b()Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/h;->f(I)Z

    move-result v0

    return v0
.end method

.method public c(I)J
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/h;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/h;->c()V

    .line 121
    return-void
.end method

.method public d(I)J
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/h;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->b()Lcom/liulishuo/filedownloader/services/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/services/f$a;->a()V

    .line 138
    return-void
.end method

.method public e(I)B
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/h;->e(I)B

    move-result v0

    return v0
.end method

.method public f(I)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/f;->a:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/h;->g(I)Z

    move-result v0

    return v0
.end method
