.class Lb/a/a/l$2;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l;->b(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/m$b;

.field final synthetic b:Lb/a/c;

.field final synthetic c:Lb/a/a/l;


# direct methods
.method constructor <init>(Lb/a/a/l;Lb/a/a/m$b;Lb/a/c;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lb/a/a/l$2;->c:Lb/a/a/l;

    iput-object p2, p0, Lb/a/a/l$2;->a:Lb/a/a/m$b;

    iput-object p3, p0, Lb/a/a/l$2;->b:Lb/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lb/a/a/l$2;->a:Lb/a/a/m$b;

    iget-object v1, p0, Lb/a/a/l$2;->b:Lb/a/c;

    invoke-virtual {v0, v1}, Lb/a/a/m$b;->a(Lb/a/c;)V

    .line 1117
    return-void
.end method
