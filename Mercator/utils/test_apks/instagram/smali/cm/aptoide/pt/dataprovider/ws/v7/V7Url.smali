.class public Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;
.super Ljava/lang/Object;
.source "V7Url.java"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->url:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public containsLimit()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->url:Ljava/lang/String;

    const-string v1, "limit="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->getStoreIdFromGetUrlPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$RegexU;->getStoreNameFromGetUrlPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->url:Ljava/lang/String;

    .line 46
    return-object p0
.end method
