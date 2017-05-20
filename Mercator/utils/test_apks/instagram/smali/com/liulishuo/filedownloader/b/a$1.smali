.class Lcom/liulishuo/filedownloader/b/a$1;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/b/a;->b(Lcom/liulishuo/filedownloader/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/b/c;

.field final synthetic b:Lcom/liulishuo/filedownloader/b/a;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/b/a;Lcom/liulishuo/filedownloader/b/c;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/a$1;->b:Lcom/liulishuo/filedownloader/b/a;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/b/a$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/a$1;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/a$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/b/c;)Z

    .line 122
    return-void
.end method
