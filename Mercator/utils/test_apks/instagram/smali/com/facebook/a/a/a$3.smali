.class final Lcom/facebook/a/a/a$3;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a/a;->b(Landroid/app/Activity;)V
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
    .line 155
    iput-object p1, p0, Lcom/facebook/a/a/a$3;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/facebook/a/a/a$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 158
    iget-object v0, p0, Lcom/facebook/a/a/a$3;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/facebook/a/a/a$3;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/facebook/c/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v2

    if-nez v2, :cond_1

    .line 162
    new-instance v2, Lcom/facebook/a/a/f;

    iget-wide v4, p0, Lcom/facebook/a/a/a$3;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/facebook/a/a/f;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/a/a/a;->a(Lcom/facebook/a/a/f;)Lcom/facebook/a/a/f;

    .line 167
    invoke-static {}, Lcom/facebook/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v0, v1, v6, v2}, Lcom/facebook/a/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/h;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/a/a/a$3;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/a/a/f;->a(Ljava/lang/Long;)V

    .line 191
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/a/f;->j()V

    .line 192
    return-void

    .line 168
    :cond_1
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a/a/f;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    iget-wide v2, p0, Lcom/facebook/a/a/a$3;->b:J

    .line 170
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/a/a/f;->c()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 171
    invoke-static {}, Lcom/facebook/a/a/a;->d()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 177
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/facebook/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/a/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/f;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/facebook/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v0, v1, v6, v2}, Lcom/facebook/a/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/h;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/facebook/a/a/f;

    iget-wide v2, p0, Lcom/facebook/a/a/a$3;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/facebook/a/a/f;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/a/a/a;->a(Lcom/facebook/a/a/f;)Lcom/facebook/a/a/f;

    goto :goto_0

    .line 185
    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/a/f;->e()V

    goto :goto_0
.end method
