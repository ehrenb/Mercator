.class public Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;
.super Ljava/lang/Object;
.source "SecurePreferencesImplementation.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$100()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$1;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->commit()Z

    goto :goto_0
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 228
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    return-object p0
.end method

.method public putStringNoEncrypted(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 190
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 194
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    # getter for: Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    return-object p0
.end method
