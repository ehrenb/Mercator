.class final Lcom/facebook/a/a/a$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/a/a/a$2;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/facebook/a/a/a$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 120
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/facebook/a/a/a$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/facebook/a/a/a$2;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/facebook/c/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/facebook/a/a/f;->a()Lcom/facebook/a/a/f;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_0

    .line 131
    invoke-static {}, Lcom/facebook/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/a/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/f;Ljava/lang/String;)V

    .line 134
    :cond_0
    new-instance v2, Lcom/facebook/a/a/f;

    iget-wide v4, p0, Lcom/facebook/a/a/a$2;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/facebook/a/a/f;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/a/a/a;->a(Lcom/facebook/a/a/f;)Lcom/facebook/a/a/f;

    .line 135
    iget-object v2, p0, Lcom/facebook/a/a/a$2;->a:Landroid/app/Activity;

    .line 136
    invoke-static {v2}, Lcom/facebook/a/a/h$a;->a(Landroid/app/Activity;)Lcom/facebook/a/a/h;

    move-result-object v2

    .line 137
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/a/a/f;->a(Lcom/facebook/a/a/h;)V

    .line 142
    invoke-static {}, Lcom/facebook/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/a/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/h;Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void
.end method
