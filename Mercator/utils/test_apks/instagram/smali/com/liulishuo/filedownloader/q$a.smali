.class final Lcom/liulishuo/filedownloader/q$a;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/liulishuo/filedownloader/q;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/q;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/q$a;->a:Lcom/liulishuo/filedownloader/q;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/q;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/liulishuo/filedownloader/q$a;->a:Lcom/liulishuo/filedownloader/q;

    return-object v0
.end method
