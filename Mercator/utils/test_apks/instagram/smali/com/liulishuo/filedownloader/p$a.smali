.class Lcom/liulishuo/filedownloader/p$a;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/liulishuo/filedownloader/p;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/p;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/p$a;->a:Lcom/liulishuo/filedownloader/p;

    .line 39
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/filedownloader/z;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/z;-><init>()V

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/c$b;)V

    .line 40
    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/p;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/liulishuo/filedownloader/p$a;->a:Lcom/liulishuo/filedownloader/p;

    return-object v0
.end method
