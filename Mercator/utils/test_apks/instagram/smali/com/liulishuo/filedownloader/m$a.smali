.class final Lcom/liulishuo/filedownloader/m$a;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/liulishuo/filedownloader/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/m;-><init>(Lcom/liulishuo/filedownloader/m$1;)V

    sput-object v0, Lcom/liulishuo/filedownloader/m$a;->a:Lcom/liulishuo/filedownloader/m;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/m;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/liulishuo/filedownloader/m$a;->a:Lcom/liulishuo/filedownloader/m;

    return-object v0
.end method
