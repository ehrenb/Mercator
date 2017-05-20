.class final Lcom/b/b/ac$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ac$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ac$a;


# direct methods
.method constructor <init>(Lcom/b/b/ac$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/b/b/ac$a$1;->a:Lcom/b/b/ac$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
