.class Lcom/facebook/GraphRequest$2;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/GraphRequest$b;

.field final synthetic b:Lcom/facebook/GraphRequest;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$b;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/facebook/GraphRequest$2;->b:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$2;->a:Lcom/facebook/GraphRequest$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/k;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 913
    invoke-virtual {p1}, Lcom/facebook/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_3

    const-string v1, "__debug__"

    .line 915
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 916
    :goto_0
    if-eqz v0, :cond_4

    const-string v1, "messages"

    .line 917
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v6, v0

    .line 918
    :goto_1
    if-eqz v6, :cond_8

    .line 919
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 920
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 921
    if-eqz v3, :cond_5

    const-string v1, "message"

    .line 922
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    :goto_3
    if-eqz v3, :cond_6

    const-string v1, "type"

    .line 925
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 927
    :goto_4
    if-eqz v3, :cond_7

    const-string v1, "link"

    .line 928
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 930
    :goto_5
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 931
    sget-object v1, Lcom/facebook/n;->h:Lcom/facebook/n;

    .line 932
    const-string v7, "warning"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 933
    sget-object v1, Lcom/facebook/n;->g:Lcom/facebook/n;

    .line 935
    :cond_0
    invoke-static {v3}, Lcom/facebook/c/ab;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Link: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    :cond_1
    sget-object v3, Lcom/facebook/GraphRequest;->a:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v4

    .line 915
    goto :goto_0

    :cond_4
    move-object v6, v4

    .line 917
    goto :goto_1

    :cond_5
    move-object v2, v4

    .line 922
    goto :goto_3

    :cond_6
    move-object v5, v4

    .line 925
    goto :goto_4

    :cond_7
    move-object v3, v4

    .line 928
    goto :goto_5

    .line 942
    :cond_8
    iget-object v0, p0, Lcom/facebook/GraphRequest$2;->a:Lcom/facebook/GraphRequest$b;

    if-eqz v0, :cond_9

    .line 943
    iget-object v0, p0, Lcom/facebook/GraphRequest$2;->a:Lcom/facebook/GraphRequest$b;

    invoke-interface {v0, p1}, Lcom/facebook/GraphRequest$b;->a(Lcom/facebook/k;)V

    .line 945
    :cond_9
    return-void
.end method
