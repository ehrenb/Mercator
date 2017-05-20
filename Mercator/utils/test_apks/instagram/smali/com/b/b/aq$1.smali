.class final Lcom/b/b/aq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/bp",
        "<",
        "Lcom/b/b/cs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 112
    check-cast p1, Lcom/b/b/cs;

    .line 1115
    iget-object v0, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    invoke-static {v0}, Lcom/b/b/aq;->a(Lcom/b/b/aq;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/b/b/cs;->b:Lcom/b/b/cr;

    iget-object v1, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    invoke-static {v1}, Lcom/b/b/aq;->a(Lcom/b/b/aq;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1119
    :cond_0
    sget-object v0, Lcom/b/b/aq$15;->a:[I

    iget v1, p1, Lcom/b/b/cs;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1256
    :cond_1
    :goto_0
    return-void

    .line 1121
    :pswitch_0
    iget-object v2, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    iget-object v1, p1, Lcom/b/b/cs;->b:Lcom/b/b/cr;

    iget-object v0, p1, Lcom/b/b/cs;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1192
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/b/b/aq;->g:Ljava/lang/ref/WeakReference;

    .line 1194
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v3

    .line 1196
    const-string v1, "LogEvents"

    invoke-virtual {v3, v1}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/b/b/aq;->k:Z

    .line 1197
    const-string v1, "LogEvents"

    invoke-virtual {v3, v1, v2}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 1198
    sget-object v1, Lcom/b/b/aq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, LogEvents = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/b/b/aq;->k:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v1, "UserId"

    invoke-virtual {v3, v1}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/b/b/aq;->l:Ljava/lang/String;

    .line 1201
    const-string v1, "UserId"

    invoke-virtual {v3, v1, v2}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 1202
    sget-object v1, Lcom/b/b/aq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, UserId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/b/b/aq;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v1, "Gender"

    invoke-virtual {v3, v1}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, v2, Lcom/b/b/aq;->m:B

    .line 1205
    const-string v1, "Gender"

    invoke-virtual {v3, v1, v2}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 1206
    sget-object v1, Lcom/b/b/aq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, Gender = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v5, v2, Lcom/b/b/aq;->m:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v1, "Age"

    invoke-virtual {v3, v1}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v2, Lcom/b/b/aq;->n:Ljava/lang/Long;

    .line 1209
    const-string v1, "Age"

    invoke-virtual {v3, v1, v2}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 1210
    sget-object v1, Lcom/b/b/aq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, BirthDate = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/b/b/aq;->n:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v1, "analyticsEnabled"

    invoke-virtual {v3, v1}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/b/b/aq;->o:Z

    .line 1213
    const-string v1, "analyticsEnabled"

    invoke-virtual {v3, v1, v2}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 1214
    sget-object v1, Lcom/b/b/aq;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSettings, AnalyticsEnabled = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v2, Lcom/b/b/aq;->o:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ".flurryagent."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v3

    .line 2101
    iget-object v3, v3, Lcom/b/b/bg;->d:Ljava/lang/String;

    .line 1849
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1216
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v2, Lcom/b/b/aq;->h:Ljava/io/File;

    .line 1218
    new-instance v1, Lcom/b/b/bn;

    .line 2853
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurryreport."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v4

    .line 3101
    iget-object v4, v4, Lcom/b/b/bg;->d:Ljava/lang/String;

    .line 2853
    invoke-static {v4}, Lcom/b/b/df;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1218
    invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ".yflurryreport."

    new-instance v5, Lcom/b/b/aq$2;

    invoke-direct {v5, v2}, Lcom/b/b/aq$2;-><init>(Lcom/b/b/aq;)V

    invoke-direct {v1, v3, v4, v7, v5}, Lcom/b/b/bn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/b/b/cq;)V

    iput-object v1, v2, Lcom/b/b/aq;->i:Lcom/b/b/bn;

    .line 1225
    invoke-virtual {v2, v0}, Lcom/b/b/aq;->a(Landroid/content/Context;)V

    .line 1226
    invoke-virtual {v2, v7}, Lcom/b/b/aq;->a(Z)V

    .line 1230
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 4086
    iget-object v0, v0, Lcom/b/b/a;->a:Lcom/b/b/v;

    .line 1230
    if-eqz v0, :cond_2

    .line 1231
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/aq$3;

    invoke-direct {v1, v2}, Lcom/b/b/aq$3;-><init>(Lcom/b/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 1240
    :cond_2
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/aq$4;

    invoke-direct {v1, v2}, Lcom/b/b/aq$4;-><init>(Lcom/b/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 1246
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/aq$5;

    invoke-direct {v1, v2}, Lcom/b/b/aq$5;-><init>(Lcom/b/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 1255
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/at;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1256
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/aq$6;

    invoke-direct {v1, v2}, Lcom/b/b/aq$6;-><init>(Lcom/b/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1263
    :cond_3
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, v2, Lcom/b/b/aq;->p:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    goto/16 :goto_0

    .line 1125
    :pswitch_1
    iget-object v0, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    iget-object v1, p1, Lcom/b/b/cs;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/b/b/aq;->a()V

    goto/16 :goto_0

    .line 1129
    :pswitch_2
    iget-object v0, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    iget-object v1, p1, Lcom/b/b/cs;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/b/b/aq;->b()V

    goto/16 :goto_0

    .line 1133
    :pswitch_3
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    invoke-static {v2}, Lcom/b/b/aq;->b(Lcom/b/b/aq;)Lcom/b/b/bp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->b(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 1135
    iget-object v0, p0, Lcom/b/b/aq$1;->a:Lcom/b/b/aq;

    iget-wide v2, p1, Lcom/b/b/cs;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/b/b/aq;->a(J)V

    goto/16 :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
