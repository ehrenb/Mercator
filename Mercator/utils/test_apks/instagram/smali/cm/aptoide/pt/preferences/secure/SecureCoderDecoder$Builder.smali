.class public Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;
.super Ljava/lang/Object;
.source "SecureCoderDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->context:Landroid/content/Context;

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->context:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->defaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 174
    return-void
.end method


# virtual methods
.method public create()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    .locals 3

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->defaultSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->defaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 188
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->defaultSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-nez v0, :cond_1

    .line 190
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->generateAesKeyValue()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v2, p0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->defaultSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    :cond_1
    new-instance v1, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
