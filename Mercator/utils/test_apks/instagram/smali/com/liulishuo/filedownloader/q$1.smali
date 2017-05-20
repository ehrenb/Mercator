.class Lcom/liulishuo/filedownloader/q$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/q;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/q;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/q;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/liulishuo/filedownloader/q$1;->a:Lcom/liulishuo/filedownloader/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/m;->d()V

    .line 241
    return-void
.end method
